namespace :admin do
  root 'dashboard#index'

  resources :articles, path: 'productos'
  resources :categories, path: 'categorias'
  
  
end
