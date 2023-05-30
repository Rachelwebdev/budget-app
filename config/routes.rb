# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/splash'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#splash'
  resources :users, only: [:index, :show]
  resources :categories, only: [:index, :show, :new, :create, :destroy]
  resources :budgets, only: [:index, :show, :new, :create, :destroy]
 
end
