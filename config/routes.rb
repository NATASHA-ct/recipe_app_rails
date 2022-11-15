Rails.application.routes.draw do
  get 'recipes/public_recipes'
   devise_for :users
   devise_scope :user do  
  #  get '/users/sign_out' => 'devise/sessions#destroy'     
   end
  resources :foods
  resources :recipefoods
  resources :recipes
    
   # Defines the root path route ("/")
  root 'recipes#index'
end
