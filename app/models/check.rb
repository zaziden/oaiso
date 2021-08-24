class Check < ApplicationRecord
  validates :menuname, presence: true
  validates :menuprice, presence: true
  validates :menuallprice, presence: true
  validates :cup, presence: true

  belongs_to :room
  belongs_to :user
  has_one :allcheck
end
