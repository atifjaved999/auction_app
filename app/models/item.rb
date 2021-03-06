require 'open-uri'

class Item < ApplicationRecord
  PER_PAGE = 10

  attr_accessor :skip_sync_to_tophatter, :imagepath

  def initialize(attrs)
    super
    @skip_sync_to_tophatter = attrs[:skip_sync_to_tophatter] || false
  end

  has_one_attached :primary_image, dependent: :destroy

  has_many :autobids, dependent: :destroy
  has_many :auctions, dependent: :destroy
  scope :unprocessed, -> { where("processed = false AND expired < ?", Time.current) }

  after_create :create_at_top_hatter
  before_save :grab_image

  def highest_bid
    auctions.order(:price).last.price.to_f rescue 0
  end

  def self.search_keyword(keyword)
    where("LOWER(items.title) LIKE :keyword OR
        LOWER(items.description) LIKE :keyword", 
        {:keyword => "%#{keyword.downcase}%"}) if keyword.present?
  end

  def self.annouce_winners
    unprocessed.each do |item|
      winning_auction = item.auctions.order(:price).last
      if winning_auction
        item.update(bid: winning_auction.price, processed: true)
        UserMailer.declare_winner(winning_auction.user).deliver_now
      end
    end
  end
end

def grab_image
  return if imagepath.blank?
  file = open(self.imagepath)
  filename = File.basename(URI.parse(imagepath).path)
  self.primary_image.attach(io: file  , filename: filename)
end

private

def create_at_top_hatter
  if self.skip_sync_to_tophatter.blank?
    ItemWorker.perform_async('create_at_top_hatter', self)
  end
end
