class Item < ApplicationRecord
  belongs_to :category
  has_many :order_items
  has_many :ordes, through: :order_items
end
 