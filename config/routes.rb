require 'sidekiq/web'

Rails.application.routes.draw do
# envは環境を確認するメソッド。↓はRailsが開発環境であるかを確認する。
  if Rails.env.development?
# letter_opener_webが送信されたメールを見れるようにしてくれる。
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
    mount Sidekiq::Web, at: '/sidekiq'
  end
  get 'comments/edit'
  root to: 'home#index'
  resources :pictures, shallow: true do
    collection do
      get :search
    end
    resources :comments
  end
  get    '/welcome', to: "sessions#new",     as: :welcome
  post   '/login',   to: "sessions#create",  as: :login
  delete '/logout',  to: "sessions#destroy", as: :logout
  resources :users, only: %i[index new create show]
  resources :likes, only: %i[create destroy]
  resources :relationships, only: %i[create destroy]
  resources :activities, only: [] do
    patch :read, on: :member
  end
  namespace :mypage do
    resource :account, only: %i[edit update]
    resources :activities, only: %i[index]
    resource :notification_setting, only: %i[edit update]
  end
end
