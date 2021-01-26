Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#index"
    get "/show/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

  end
end
