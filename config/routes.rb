Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { confirmations: 'users/confirmations' }

  resources :treinos
  resources :exercicios, only: [:new, :destroy]


end
