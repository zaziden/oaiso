class Check < ApplicationRecord
  acts_as_paranoid
  
  validates :menuname, presence: true
  validates :menuprice, presence: true
  validates :menuallprice, presence: true
  validates :cup, presence: true

  belongs_to :room
  belongs_to :user
end
