Rails.application.routes.draw do
  get 'tasks/create'
  get 'tasks/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :tasks
  resources :users, only: [:new, :create]
  
  resources :tasks, only: [:create, :destroy]
end
