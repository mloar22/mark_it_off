Rails.application.routes.draw do
  get 'home/lists'
  get 'home/index'

  devise_for :users
  resources :users
  root to: 'home#index'
end
