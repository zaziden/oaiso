class Gest < ApplicationRecord
  validates :gest_name,presence: true, uniqueness: { scope: :user }

  belongs_to :user
end
