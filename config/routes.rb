Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :events do
    resources :bookings, only: %i[create]
  end

  resources :users, only: %i[show]
  resources :bookings, only: %i[update destroy]

  get "/events/:id(.:format)", to: "events#show"
  get "/components", to: "pages#components"

  resources :chatrooms, only: %i[index show]
end
