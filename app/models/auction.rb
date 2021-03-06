class Auction < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validate :if_item_expired
  validate :if_same_user
  validate :if_eligible
  validate :if_highest_bid

  before_save :set_placed
  after_create :auto_bid_others
  after_create :send_exceed_bid_alerts

  def highest_bid
    Auction.where(item_id: self.item_id).order(:price).last
  end

  private

  def set_placed
    self.placed = Time.current
  end

  def send_exceed_bid_alerts
    self.item.autobids.each do |autobid|
      percent = autobid.user.maxbid.to_i * autobid.alert.to_i
      item_price = autobid.item.auctions.maximum(:price).to_i

      if item_price >= percent
        UserMailer.percentage_alert(autobid.user, item_price, percent).deliver_now
        puts "send email to #{autobid.user.email}"
      end
    end
  end

  def auto_bid_others
    self.item.autobids.each do |autobid|
      price = autobid.user.auctions.joins(:item).where("items.processed = false", Time.current).select(:item_id).group(:item_id).maximum(:price).values.map(&:to_i).sum

      if price < autobid.user.maxbid.to_i
        autobid.user.auctions.create(item: autobid.item, price: self.price.to_f + 1, placed: Time.current)
      end
    end
  end

  def if_item_expired
    if item.expired < Time.current && item.processed == false
      self.errors[:base] << "Item auction has been expired"
    end
  end

  def if_same_user
    if self.user_id == self.highest_bid.try(:user_id)
      self.errors[:base] << "You already have made the highest bid"
    end
  end

  def if_eligible
    if self.user.autobids.where(item_id: self.item_id).present? && self.user.maxbid.to_f < self.price.to_f
      self.errors[:base] << "User is not eligible to place bid"
    end
  end

  def if_highest_bid
    if self.price.to_f <= self.highest_bid.try(:price).to_f
      self.errors[:base] << "The bid value should be higher than the last bid made on the item"
    end
  end

end
