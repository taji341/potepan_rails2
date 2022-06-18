Rails.application.routes.draw do
  
  devise_for :users
  resources :users
  resources :rooms
  resources :reservations
  root 'home#top'
  get 'users/acount', to: 'users#acount'
  get 'search', to: 'rooms#search'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
