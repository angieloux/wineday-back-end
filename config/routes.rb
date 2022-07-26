Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  get "/products", to: "products#index", as: "products"
  get "/products/:id", to: "products#show", as: "product"
  get "/products/high_scoring_wines", to: "products#top_rated", as: "top_rated"
  get "/orders", to: "orders#index", as: "orders"

  post "/checkout", to: "orders#create", as: "new_order"
  post "/orders/:id", to: "orders#show", as: "order"
  

  post "/auth/login", to: "auth#login", as: "login"

  post "/auth/register", to: "auth#register", as: "register"
  
  post '/auth/logged_in_user', to: 'auth#logged_in_user'
end
