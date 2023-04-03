class Api::V1::RestaurantsController < ApplicationController

    def index
        render json: RestaurantSerializer.new(Restaurant.includes(:locations).where(locations: {city: params[:location]}))
    end
end