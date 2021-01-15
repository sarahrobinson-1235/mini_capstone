class Api::ProductsController < ApplicationController
  def all_products
    @all_products = Product.all
    render "all_products.json.jb"
  end

  def first_product 
    @first_product = Product.first 
    render "first_product.json.jb"
  end

  def last_product
    @last_product = Product.last 
    render "last_product.json.jb"
  end

  def any_product
    
    render "any_product.json.jb"
  end
end
