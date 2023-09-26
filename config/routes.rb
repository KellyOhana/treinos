Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { confirmations: 'users/confirmations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :treinos do
    resources :exercicios
  end

  resources :exercicios

end
