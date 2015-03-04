Rails.application.routes.draw do

  resources :proposals, only: [:index, :show]
  resources :articles, only: [:index]
  resources :sessions, only: [:create, :destroy]

  root to: 'application#index'
end
