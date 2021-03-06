class Autobid < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validate :must_be_one

  # default_scope -> { order('created_at ASC') }

  def self.by_user(user_id)
    where(user_id: user_id)
  end

  private

  def must_be_one
    if Autobid.where(item_id: self.item_id, user_id: self.user_id).any?
      self.errors[:base] << "Autobid has already been enabled"
    end
  end
end
