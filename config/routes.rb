Rails.application.routes.draw do
  resources :destinations, only: [:index]
  namespace :api do
    resources :users_to_destination, only: [:index]
  end

  root to: 'destinations#index'
end
