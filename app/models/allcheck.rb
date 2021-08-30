class Allcheck < ApplicationRecord
  acts_as_paranoid

  validates :allcheck, presence: true
  validates :room_id, uniqueness: true

  belongs_to :user
  belongs_to :room
end
