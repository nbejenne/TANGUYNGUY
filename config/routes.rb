Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'spots#index'
  resources :spots, only: [:show]
  resources :spots do
    resources :bookings, only: [:create, :show, :update], shallow: true do
      resources :reviews, only: [:create]
    end
  end
  resources :bookings, only: [:index]
  namespace :host do
    resources :spots, only: [:index, :new, :create, :edit, :update, :destroy] do
      resources :spot_features, only: [:create, :destroy]
    end
  end
end
