Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :events do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[update destroy]

  get "/events/:id(.:format)", to: "events#show"
  get "/components", to: "pages#components"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
