Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    get '/ingredients', to: 'recipes#ingredients'
  end
  resources :foods
  resources :users
  resources :recipe_foods
  get '/public_recipes', to: 'recipes#public_recipes'
  get '/general_shopping_list', to: 'foods#shopping_list'
  
  # get '/patients/:id', to: 'patients#show', as: 'patient'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"
end
