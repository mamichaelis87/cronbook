Rails.application.routes.draw do
  devise_for :users 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "posts#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :profiles
  resources :posts
  resources :comments
  resources :friendships
  resources :friend_requests
  put '/post/:id/like', to: 'posts#like', as: 'like'
end
