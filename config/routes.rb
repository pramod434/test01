Rails.application.routes.draw do

  get 'sessions/new'

  resources :users
  resources :sessions
  root 'users#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#signup'
  post '/signup', to: 'users#show'
  get 'home', to: 'users#index'
  get '/signin', to: 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
