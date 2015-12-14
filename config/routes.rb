Rails.application.routes.draw do
  resources :players
  devise_for :users
  

  end
