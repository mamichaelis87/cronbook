Rails.application.routes.draw do
  devise_for :users do
    resources :profiles
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "posts#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts
  resources :comments
  resources :likes
  resources :friendships
end
