Rails.application.routes.draw do

  devise_for :customers
  root 'products#index'
  resources :products

end
