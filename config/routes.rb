Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :checks
  resources :users, only: [:edit, :update]
  resources :gests, only: [:new, :create]
  resources :menus, only: [:new, :create]
  resources :rooms
end
