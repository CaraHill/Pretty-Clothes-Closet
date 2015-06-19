Rails.application.routes.draw do

  devise_for :customers, controllers: {sessions: 'sessions'}
  root 'products#index'
  resources :products

end
