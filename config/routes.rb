Rails.application.routes.draw do

  root 'recipes#index'
  get '/my_recipes' => 'recipes#my_recipes'
  devise_for :users 
  resources :recipes
  resources :categories


end 
