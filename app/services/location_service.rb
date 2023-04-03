# frozen_string_literal: true

# location class
class LocationService
  attr_reader :restaurant, :city, :state

  def initialize(restaurant, city, state)
    @restaurant = restaurant
    @city = city
    @state = state
  end

  def create
    @restaurant.locations.find_or_create_by(city: @city, state: @state)
  end
end
