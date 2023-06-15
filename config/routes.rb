Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"

  get '/home', to: 'pages#home'
  # get '/landing', to: 'pages#landing'

  resources :events do
    resources :bookings, only: %i[create]
  end

  resources :users, only: %i[show]
  resources :bookings, only: %i[update destroy]

  get "/events/:id(.:format)", to: "events#show"
  # get "/components", to: "pages#components"

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end
end
