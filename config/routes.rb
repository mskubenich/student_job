Rails.application.routes.draw do

  resources :proposals, only: [:index, :show]
  resources :articles, only: [:index]
  resources :sessions, only: [:create, :destroy]
  resources :users, only: [:create] do
    collection do
      get :profile
    end
  end

  root to: 'application#index'
end
