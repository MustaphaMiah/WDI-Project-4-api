Rails.application.routes.draw do
  resources :requests
  resources :teams
  resources :users
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
