Rails.application.routes.draw do
  devise_for :users
  root to: "checks#index"
  resources :checks
  resources :users, only: [:edit, :update]
end
