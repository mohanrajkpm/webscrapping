class Item < ApplicationRecord
  belongs_to :category
  has_many :order_items
  has_many :ordes, through: :order_items

  def reduce_quantity!(quantity_to_reduce)
    new_quantity = quantity - quantity_to_reduce
    new_quantity = 0 if new_quantity <= 0
    update_attribute :quantity, new_quantity
  end
end
 