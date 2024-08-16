Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # get "offers/:id", to: "offers#show", as: :offer

  # get "offers/offer_id/bookings/new", to: "bookings#new"

  # post "offers/offer_id/bookings", to: "bookings#create"

  # get "booking/mybookings", to: "bookings#mybookings"

  # get "bookings/bookings_id/reviews/new", to: "reviews#new"

  # post "bookings/bookings_id/reviews", to: "reviews#create"

  # get "offers/new", to: "offers#new"

  # post "offers", to: "offers#create"

  # get "/offers/:id", to: "offers#show"

  root to: "offers#index"

  resources :offers, only: %i[index new create show] do
    resources :bookings, only: %i[new create]
  end
  
  post 'bookings/:id/accept', to: 'bookings#accept', as: 'accept_booking'
  post 'bookings/:id/refuse', to: 'bookings#refuse', as: 'refuse_booking'

  resources :bookings, only: %i[] do
    collection do
      get :my_bookings
    end
  end
end
