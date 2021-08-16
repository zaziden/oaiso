class Room < ApplicationRecord
  validates :room_name, presence: true

  belongs_to :user, optional: true
end
