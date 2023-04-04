# frozen_string_literal: true

# order item serialize object
class OrderItemSerializer
    include FastJsonapi::ObjectSerializer
    attributes :order_id, :item_id
end