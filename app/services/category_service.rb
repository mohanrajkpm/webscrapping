# frozen_string_literal: true

# category class
class CategoryService
  attr_reader :restaurant, :category_name

  def initialize(restaurant, category_name)
    @restaurant = restaurant
    @category_name = category_name
  end

  def create
    @restaurant.categories.find_or_create_by(name: @category_name)
  end
end
