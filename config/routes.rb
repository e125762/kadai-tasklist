Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  root to: 'users#new'
  resources :tasks
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
