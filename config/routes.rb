Rails.application.routes.draw do
  namespace :api do
    resources :games, only: [:create] do
      resources :guesses, only: [:create]
    end

    resources :characters, only: [:index]

    resources :scores, only: [:index, :create]
  end
end