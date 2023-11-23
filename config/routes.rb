Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { confirmations: 'users/confirmations' }

  resources :treinos do
    collection do
      post :adicionar_treino_pronto
    end

  end
  resources :treino_prontos
  resources :exercicios, only: [:new, :destroy]


end
