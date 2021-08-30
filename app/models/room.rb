class Room < ApplicationRecord
  acts_as_paranoid

  validates :room_name, presence: true

  belongs_to :user, optional: true
  has_many :checks, dependent: :destroy
  has_one :allcheck, dependent: :destroy
end
