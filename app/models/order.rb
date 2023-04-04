class Order < ApplicationRecord
  belongs_to :user

  has_many :order_items, dependent: :destroy
  has_many :items, through: :order_items

  accepts_nested_attributes_for :order_items

  before_validation :set_total
  after_commit :reduce_item_quantity

  def set_total
    # set total into order
    self.total = order_items.map(&:item).map(&:price).sum
  end   

  def reduce_item_quantity
    # reduce quantiy of products
    self.order_items.each do |order_item|
      order_item.item.reduce_quantity!(order_item.quantity)
    end
  end

end
