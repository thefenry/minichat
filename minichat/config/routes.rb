Minichat::Application.routes.draw do
  root :to => 'messages#index'
  resources :messages, only: [:index, :create]
  resources :users, only: [:new, :create]
end
