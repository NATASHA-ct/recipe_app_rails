Rails.application.routes.draw do
  get 'recipes/public_recipes'
  devise_for :users
  resources :foods
  resources :recipefoods
  resources :recipes
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'recipes#index'
end
