Rails.application.routes.draw do
  
  resources :link_groups do
    resources :links
  end
  
  devise_for :users
  
  resources :friends

  
  
  root 'home#index'
  # root 'home#index'

  get 'home/about'

  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end