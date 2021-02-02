class Api::CartedProductsController < ApplicationController

  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted"
    )
    if @carted_product
        @carted_product.save
        render "show.json.jb"
    else
      render json: {errors: @carted_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jb"
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(status: "removed")
    render json: { message: "Item(s)removed." }
  end
end
