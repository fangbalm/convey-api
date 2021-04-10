Rails.application.routes.draw do
  resources :entries
  resources :prompts
  resources :categories, only: [:index, :show]
  resources :journals
  # resources :users, only: [:index, :show]
  get '/user', to: 'users#show'; 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
