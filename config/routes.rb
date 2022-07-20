Rails.application.routes.draw do
  resources :articles
  # Defines the root path route ("/")
  root "home#index"

  devise_for :users, path: 'admin'
  
  #==========Admin routes===================
  draw(:admin)


  resources :categories

end
