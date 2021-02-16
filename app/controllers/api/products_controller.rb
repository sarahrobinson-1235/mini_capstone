class Api::ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @products = Product.all
    if params[:discount]
      @products = @products.where("price < ?", 10)
    elsif params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    end
    if params[:category]
      category = Category.find_by("name =?", params[:category])
      @products = category.products
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
      id: params[:id], 
      name: params[:name], 
      price: params[:price], 
      description: params[:description], inventory: params[:inventory],
      supplier_id: params[:supplier_id]
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
