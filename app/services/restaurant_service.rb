# frozen_string_literal: true

# restaurant class
class RestaurantService
  attr_reader :restaurant_name

  def initialize(restaurant_name)
    @restaurant_name = restaurant_name
  end

  def create
    Restaurant.find_or_create_by!(name: @restaurant_name)
  end
end
