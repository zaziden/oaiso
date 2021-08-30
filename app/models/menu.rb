class Menu < ApplicationRecord
  validates :menu_name, presence: true, uniqueness: { scope: :user }
  validates :price, uniqueness: { scope: :user }, allow_blank: true

  belongs_to :user
end
