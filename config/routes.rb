Rails.application.routes.draw do

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'posts#index'
  resources :posts do
    resources :comments, except: :show
  end


  resources :categories, except: :show
  namespace :user do
    resources :posts
    resources :comments
  end
end
