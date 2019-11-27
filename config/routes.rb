# frozen_string_literal: true

# top-level documentation class comment

Rails.application.routes.draw do
  # # Read all restaurants
  # get 'restaurants', to: 'restaurants#index'
  # # Create restaurant
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'
  # # Read a restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # Create review
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
    # Got rid of :new in only: [:new, :create] after refactoring
  end
end
