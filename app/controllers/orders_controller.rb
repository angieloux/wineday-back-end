class OrdersController < ApplicationController
  before_action :set_order, only: [:show]
  before_action :authenticate, only: [:index, :create]

  def index
    ## Eager load the users at the same time
    orders = current_user.orders.includes(:user).order(created_at: :desc)
    render json: orders, include: { user: { only: :username }}, status: 200
  end

  def show
    render json: @order
  end

  def create
    pp current_user
    order = current_user.orders.create(order_params)
    pp order
    unless order.errors.any?
      render json: order, include: { user: { only: :id } }, status: 201
    else
      render json: { errors: order.errors.full_messages }, status: 422
    end
  end

  private

  def set_order
    begin
      @order = Order.find(params[:id])
    rescue
      render json: { error: "Unable to find order" }, status: 404
    end
  end

  def order_params
    params.require(:order).permit(:user_id, :total, :id)
  end
end
