Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # resources  :users, :only => [:index, :show]

  resources :products 
  resources :orders 

end
