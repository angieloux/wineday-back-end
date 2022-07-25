Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/products', to: 'products#index', as: 'products'

  get '/orders', to: 'orders#index', as: 'orders'
end
