Rails.application.routes.draw do
  root to: 'pictures#index'
  resources :pictures
  get    '/welcome', to: "sessions#new",     as: :welcome
  post   '/login',   to: "sessions#create",  as: :login
  delete '/logout',  to: "sessions#destroy", as: :logout
  resources :users, only: [:new, :create, :show]
end
