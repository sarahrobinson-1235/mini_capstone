class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:discount]
      @products = @products.where("price < ?", 10)
    elsif params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    end
    if params[:search]
      @products = @products.where("name iLIKE ? OR description iLIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    render "index.json.jb"
    end
  end

  def show
    id = params["id"]
    @product = Product.find_by(id: id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      id: params[:id], name: params[:name], price: params[:price], description: params[:description], inventory: params[:inventory]
    )
    if @product.save
    render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    product_id = params["id"]
    @product = Product.find_by(id: product_id)

    @product.name = params[:name] || @product.name 
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.image_url = params[:image_url] || @product.image_url
    @product.inventory = params[:inventory]
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy

    render json: {message: "Product destroyed!"}
  end
end
