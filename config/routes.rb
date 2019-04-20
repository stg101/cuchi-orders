Rails.application.routes.draw do
  
  root 'welcome#index'

  devise_for :users
  resources  :users, :only => [:index, :show] do
    member do
      get :make_order
    end
  end

  resources :products 
  resources :orders 

end
