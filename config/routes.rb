Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :events, only: [:index]

  get "/components", to: "pages#components"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
