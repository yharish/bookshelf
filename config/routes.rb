Bookshelf::Application.routes.draw do
  devise_for :users


  root to: "static_pages#home"

  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'
  match '/terms', to: 'static_pages#terms'
  match '/privacy', to: 'static_pages#privacy'
  
  match '/user', to: 'users#show'

  get 'static_pages/help'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/terms'
  get 'static_pages/privacy'
  get '/users/sign_up'

  resources :users
  resources :books

end
