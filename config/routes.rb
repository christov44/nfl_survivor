Rails.application.routes.draw do
  resources :teams
  resources :matchups
  resources :weeks

  resources :home
  root "home#index"
end
