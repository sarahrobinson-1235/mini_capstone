class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def first_product 
    @first_product = Product.first 
    render "first_product.json.jb"
  end

  def last_product
    @last_product = Product.last 
    render "last_product.json.jb"
  end

  def show
    id = params["id"]
    @product = Product.find_by(id: id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      id: params[:id], name: params[:name], price: params[:price], description: params[:description]
    )
    @product.save
    render "show.json.jb"
  end
end
