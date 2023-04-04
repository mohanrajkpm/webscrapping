class Api::V1::OrdersController < ApplicationController

    def index
        render json: OrderSerializer.new(Order.all)
    end

    def create
      order = current_user.orders.build(order_params)

      if order.save
        render json: order, status: 201
      else
        render json: { errors: order.errors }, status: 422
      end
    end

    private

      def order_params
        params.require(:order).permit(:item_ids => [], :order_items_attributes => [:item_id, :quantity])
      end

      def current_user
        User.find(params[:user_id].to_i) || User.first
      end
end