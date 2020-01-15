Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  get '/oauth/callback', to: 'sessions#create'
  
  namespace :api do
    get 'user', to: 'users#show'
  end
end
