Rails.application.routes.draw do
  devise_for :users
  root "stores#index"
  resources :users, only: [:index,:edit, :update]
  resources :products, only: [:index] 
  resources :categories, only: [:index] 
  resources :stores, only: [:index] 
  
  resources :stores do
    collection do
      get 'search'
    end
  end
end
