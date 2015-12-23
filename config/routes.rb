Rails.application.routes.draw do
  resources :teams
  resources :players
  devise_for :users

  root to: "home#home"

  get "/dashboard" => "home#dashboard"

  end
