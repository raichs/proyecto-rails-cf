Rails.application.routes.draw do
  resources :articles
  # Defines the root path route ("/")
  root "home#index"

  devise_for :users
  resources :categories
end
