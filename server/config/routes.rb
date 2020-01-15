Rails.application.routes.draw do
  use_doorkeeper
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create]


  namespace :api do
    get 'user', to: 'users#show'
    get 'user/update', to: 'users#update'
  end
  
  resources :sessions, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: :logout

  root to: 'pages#index'
end
