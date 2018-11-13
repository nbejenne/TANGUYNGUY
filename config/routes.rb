Rails.application.routes.draw do
  devise_for :users

  root to: 'spots#index'
  resources :spots, only: [:show] do
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
