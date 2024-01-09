Rails.application.routes.draw do
  devise_for :users 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "posts#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :profiles
  resources :posts do 
    member do
      post "like", to: "posts#like"
    end
  end
  resources :comments
  resources :friendships
  resources :friend_requests
end
