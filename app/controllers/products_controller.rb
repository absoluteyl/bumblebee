class ProductsController < ApplicationController
  before_action :authenticate_user!

  load_and_authorize_resource

  def index
  end

  def new
  end

  def create
    @product.creator = current_user
    if @product.save
      redirect_to product_url(@product)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_url(@product)
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(
      :id, :name, :price, :image
    )
  end
end
