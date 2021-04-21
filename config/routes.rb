Rails.application.routes.draw do
  # get '/user', to: 'users#show'; 
  post "/login", to: "users#login"
  resources :journals
  resources :entries
  resources :prompts
  resources :categories, only: [:index, :show]
  
  # resources :users, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
