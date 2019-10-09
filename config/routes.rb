Rails.application.routes.draw do
  get 'home/index'

resources :product_types
resources :products

  root 'home#index'
end
