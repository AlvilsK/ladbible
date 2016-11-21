Rails.application.routes.draw do
  
  # Root path.
  root 'static_pages#index'
  
  # Static pages.

  # Users.
  resources :users
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  
  # Posts.
  
  # Sessions.

end