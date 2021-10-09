Rails.application.routes.draw do
  get 'comments/edit'
  root to: 'home#index'
  resources :pictures, shallow: true do
    resources :comments
  end
  get    '/welcome', to: "sessions#new",     as: :welcome
  post   '/login',   to: "sessions#create",  as: :login
  delete '/logout',  to: "sessions#destroy", as: :logout
  resources :users, only: %i[index new create show]
  resources :likes, only: %i[create destroy]
  resources :relationships, only: %i[create destroy]
end
