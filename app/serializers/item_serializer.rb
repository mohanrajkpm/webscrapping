# frozen_string_literal: true

# item serialize object
class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :price, :description

  attributes :category_name do |obj|
    obj.category.name
  end

  attributes :restaurant_name do |obj|
    obj.category.restaurant.name
  end
end
