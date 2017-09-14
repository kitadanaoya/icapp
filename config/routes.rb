Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "toppages#index"
  get 'toppages/about'
  get 'toppages/account'
end
