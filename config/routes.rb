Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/products", to: "products#index", as: "products"

  get "/orders", to: "orders#index", as: "orders"

  get "/products/:id", to: "products#show", as: "product"

  post "/auth/login", to: "auth#login", as: "login"

  post "/auth/register", to: "auth#register", as: "register"
end
