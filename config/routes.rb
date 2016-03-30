Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :teams
  resources :matchups
  resources :weeks
  resources :picks

  resources :home
  root "home#index"
end
