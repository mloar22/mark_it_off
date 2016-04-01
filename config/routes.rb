Rails.application.routes.draw do
  get 'home/lists'
  get 'home/index'

  devise_for :users
  resources :users, only: [:update, :show]
  resources :items
  root to: 'home#index'
end
