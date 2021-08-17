class Menu < ApplicationRecord
  validates :menu_name,presence: true
  validates :price    ,presence: true

  belongs_to :user
end
