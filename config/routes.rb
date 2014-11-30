Rails.application.routes.draw do

  resources :proposals

  root to: 'application#index'
end
