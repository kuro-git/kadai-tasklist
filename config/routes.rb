Rails.application.routes.draw do
  #get 'toppages/index'
  #root to: 'tasks#index'
  root to: 'toppages#index'
  resources :tasks #一時的にON/OFF
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
