class ProductTypesController < ApplicationController

  def index
    @product_types = ProductType.all
  end

  def show
    @product_type = ProductType.find(params[:id])
  end

  def new
  end

  def create
    @product_type = ProductType.new(product_type_params)
    @product_type.save
    redirect_to @product_type
  end

  private
    def product_type_params
      params.require(:product_type).permit(:title, :description)
    end
end
