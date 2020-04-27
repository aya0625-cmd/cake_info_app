Rails.application.routes.draw do
  devise_for :users
  root "yours#index"
  resources :users, only: [:index,:edit, :update]
  resources :yours, only: [:index] 

end
