Rails.application.routes.draw do
  
  root 'welcome#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # resources  :users, :only => [:index, :show]

  resources :products 
  resources :orders 

end
