Rails.application.routes.draw do
  devise_for :shops
  root to: "checks#index"
  resources :checks
end
