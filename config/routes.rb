# frozen_string_literal: true

Rails.application.routes.draw do
  get 'spotify/callback'
  post 'spotify_search', to: 'spotify#search', as: 'spotify_search'
  get 'spotify_play_track', to: 'spotify#play_track', as: 'spotify_play_track'
  resources :messages
  resources :rooms
  root 'home#index'

  resources :users
  resources :sessions, only: %i[new create destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'auth/spotify/callback', to: 'users#spotify'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
