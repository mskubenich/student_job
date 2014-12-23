Rails.application.routes.draw do

  resources :proposals, only: [:index, :show]
  resources :articles, only: [:index]

  root to: 'application#index'
end
