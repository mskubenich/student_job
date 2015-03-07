Rails.application.routes.draw do

  resources :proposals, only: [:index, :show]
  resources :vacantions, only: [:index, :show]
  resources :categorys, only: [:index, :show]
  resources :articles, only: [:index]
  resources :sessions, only: [:create, :destroy]
  resources :users, only: [:create]

  root to: 'application#index'
end
