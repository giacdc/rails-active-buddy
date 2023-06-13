Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :events do
    resources :bookings, only: %i[create]
  end

  get "/events/:id(.:format)", to: "events#show"
  get "/components", to: "pages#components"

  resources :chatrooms, only: :show
end
