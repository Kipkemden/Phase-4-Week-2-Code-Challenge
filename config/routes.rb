Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :patch]
  resources :hero_powers, only: [:create]
end
