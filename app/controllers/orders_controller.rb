class OrdersController < ApplicationController
  before_action :authenticate, only: [:create]

  def index
    ## Eager load the users at the same time
    orders = Order.all.includes(:user)
    render json: orders, include: { user: { only: :username } }, status: 200
  end

  def create
    order = current_user.orders.create(order_params)
    unless order.errors.any?
      render json: order, include: { user: { only: :username } }, status: 201
    else
      render json: { errors: order.errors.full_messages }, status: 422
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :number, :total)
  end
end
