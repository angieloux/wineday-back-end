class OrdersController < ApplicationController

    def index
        ## Eager load the users at the same time
        orders = Order.all.includes(:user)
        render json: orders, include: {user: {only: :username}}, status: 200
    end
end
