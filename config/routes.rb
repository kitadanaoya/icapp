Rails.application.routes.draw do
  get 'user_points/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "toppages#index"
  get '/about', to: 'toppages#about'
  get '/account', to: 'toppages#account'
  get 'signup', to: 'users#new'
  post 'signup', to: "users#create"
  resources :users, only: [:show, :edit, :update, :destroy]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'mkinq', to: 'points#new'
  post 'mkinq', to: 'points#create'
  resources :points, only: [:index, :show, :edit, :update, :destroy]
  
  resources :user_points, only: [:index, :show, :destroy]
end
