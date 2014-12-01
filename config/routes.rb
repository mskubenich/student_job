Rails.application.routes.draw do

  resources :proposals, only: [:index, :show]

  root to: 'application#index'
end
