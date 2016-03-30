Rails.application.routes.draw do
  resources :teams
  resources :matchups
  resources :weeks
  resources :picks

  resources :home
  root "home#index"
end
