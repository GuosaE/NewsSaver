Rails.application.routes.draw do

  resources :sessions, only: [:create]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :users
  resources :profile_articles
  resources :profiles
  root 'inventory#index', as: 'inventory_index'
  resources :collections
  resources :articles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
