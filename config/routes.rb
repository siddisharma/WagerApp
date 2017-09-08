Rails.application.routes.draw do
  resources :participants
  devise_for :users
  resources :payouts
  resources :bets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
