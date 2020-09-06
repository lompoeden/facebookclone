Rails.application.routes.draw do
  devise_for :users
  get 'sessions/new'
  get 'tops/index'
  root 'tops#index'
resources :users, only: [:new, :create]
    end
