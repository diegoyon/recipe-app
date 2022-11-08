Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  resources :foods
  resources :users
  get '/public_recipes', to: 'recipes#public_recipes'
  # get '/patients/:id', to: 'patients#show', as: 'patient'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"
end
