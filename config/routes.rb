Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "toppages#index"
  get '/about', to: 'toppages#about'
  get '/account', to: 'toppages#account'
  get 'signup', to: 'users#new'
  resources :users, only: [:show, :create, :edit, :update, :destroy]
end
