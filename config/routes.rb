Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "home#index"

  devise_for :users, path: 'admin'
  
  draw(:admin)

end
