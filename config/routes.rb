Rails.application.routes.draw do
  resources :teams

  resources :home
  root "home#index"
end
