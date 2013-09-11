Bookshelf::Application.routes.draw do
  devise_for :users

  root to: "static_pages#home"

  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'
  match '/terms', to: 'static_pages#terms'
  match '/privacy', to: 'static_pages#privacy'
  
  match '/user', to: 'users#show'

  resources :users
  resources :books

end
