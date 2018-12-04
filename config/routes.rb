Rails.application.routes.draw do
  root "users#index"
  resources :users, except: [:destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions

  get 'show' => 'users#show'

  get 'sign_up' => 'users#new'
  get 'log_in' => 'sessions#new'
  get 'log_out' => 'sessions#destroy'
end
