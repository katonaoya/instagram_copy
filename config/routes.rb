Rails.application.routes.draw do
  root to: 'home#index'
  get    '/welcome', to: "sessions#new",     as: :welcome
  post   '/login',   to: "sessions#create",  as: :login
  delete '/logout',  to: "sessions#destroy", as: :logout
  resources :users, only: [:new, :create]
end
