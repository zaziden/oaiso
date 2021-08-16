class Gest < ApplicationRecord
  validates :gest_name,presence: true

  belongs_to :user
end
