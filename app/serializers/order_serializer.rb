# frozen_string_literal: true

# order serialize object
class OrderSerializer
    include FastJsonapi::ObjectSerializer
    attributes :total
    has_many :items, serializer: OrderItemSerializer
end