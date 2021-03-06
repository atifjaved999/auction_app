class User < ApplicationRecord
  has_many :autobids
  has_many :auctions

  # def available_money
  # end
end
