class Api::V1::CategoriesController < ApplicationController
    def index
        render json: CategorySerializer.new(Category.includes(:restaurant).where(restaurant: {name: params[:restaurant]}))
    end
end