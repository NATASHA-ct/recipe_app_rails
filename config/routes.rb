Rails.application.routes.draw do
  get 'recipes/public_recipes'
   devise_for :users
   devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
   end
  resources :users, :foods
  

  resources :recipes do
    resources :recipefoods
  end


  get '/generallist', to: 'foods#generallist'

   # Defines the root path route ("/")
  root 'recipes#index'
end
