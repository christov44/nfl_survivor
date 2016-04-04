Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :teams
  resources :matchups
  resources :weeks
  resources :picks do
    collection  do 
      post 'set_pick'
    end
  end
  resources :admins
  resources :users
  resources :victors

  resources :home
  root "home#index"
end
