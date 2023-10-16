Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { confirmations: 'users/confirmations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :treinos

  resources :exercicios, only: [], param: :index do
    member do
      delete '(:id)' => "exercicios#destroy", as: ""
      post '/' => "exercicios#create"
    end
  end

end
