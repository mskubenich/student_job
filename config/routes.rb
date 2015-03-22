Rails.application.routes.draw do

  resources :proposals, only: [:index, :show]
  resources :vacantions, only: [:index, :show]
  resources :categorys, only: [:index, :show]
  resources :articles, only: [:index, :show]
  resources :sessions, only: [:create, :destroy]
  resources :users, only: [:create] do
    collection do
      get :profile
    end
  end

  namespace :admin do
    resources :users, only: [:index]
    resources :articles, except: [:new, :edit]
  end

  root to: 'pages#index'
end
