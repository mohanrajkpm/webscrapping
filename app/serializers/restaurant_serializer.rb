# frozen_string_literal: true

# restaurant serialize object
class RestaurantSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name
  end