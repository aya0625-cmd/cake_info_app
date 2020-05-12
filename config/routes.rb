Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  post '/messages/:message_id/goods' => "goods#create"
  delete '/messages/:message_id/goods' => "goods#destroy"

  resources :users, only: [:index,:edit, :update]
  resources :messages, only: [:index, :show]  do
    collection {get "search"}
  end
  resources :categories do
    resources :messages, only: [:index, :show] 
  end

  resources :counselings, only: [:index, :new, :create, :show] do
    resources :comments, only: :create
  end
  resources :yours, only: [:index]
end
