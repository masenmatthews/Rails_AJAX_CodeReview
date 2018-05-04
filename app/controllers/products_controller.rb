class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
    else
      render :new
    end
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    @description = @product.description
    @price = @product.price
    respond_to do |format|
      format.js
    end
  end

  private
  def product_params
    params.require(:product).permit(:image, :name, :description, :price)
  end
end
