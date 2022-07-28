Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "home#index"
  get '/productos/:id', to: 'articles#show', as: 'article'
  get '/categorias/:id', to: 'categories#show', as: 'categoy'

  devise_for :users, path: 'admin'
  
  draw(:admin)

end
