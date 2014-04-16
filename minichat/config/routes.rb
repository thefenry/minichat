Minichat::Application.routes.draw do
  root :to => 'messages#index'
  resources :messages, only: [:index, :create]
  
  resources :users, only: [:create]
  get '/signup', to: 'users#new'
  
  resources :sessions, only: [:create]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy' 
end
