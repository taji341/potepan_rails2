Rails.application.routes.draw do
  get 'rooms/search', to: 'rooms#search'
  devise_for :users
  resources :users
  resources :rooms
  resources :reservations
  root 'home#top'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
