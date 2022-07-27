class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  # before_action :authenticate, only: [:create, :update, :destroy]

  def index
    products = Product.all
    render json: products, status: 200
  end

  def show
    render json: @product
  end

  private

  def set_product
    begin
      @product = Product.find(params[:id])
    rescue
      render json: { error: "Unable to find product" }, status: 404
    end
  end

  def product_params
    params.require(:product).permit(:title, :price, :points, :variety, :country, :winery, :province, :region)
  end
end
