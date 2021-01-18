Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#index"

    get "/first_product" => "products#first_product"

    get "/last_product" => "products#last_product"

    get "/any_product" => "products#any_product"

    get "/show/:id" => "products#show"

    post "/products" => "products#create"
  end
end
