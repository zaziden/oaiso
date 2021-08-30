Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :gests, only: [:new, :create]
  resources :menus, only: [:new, :create]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :checks, only: [:index, :create]
    resources :allchecks
  end
end
