Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
  post "toggle_like", to: "likes#toggle_like" , as: :toggle_like

  resources :comments, only: [:create, :destroy]
end
