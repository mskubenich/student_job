Rails.application.routes.draw do
  resources :proposals

  get 'pages/index'

  root to: 'pages#index'
end
