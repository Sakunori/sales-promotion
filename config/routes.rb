Rails.application.routes.draw do
  get 'contacts/index'
  root "teams#index"
  resources :teams, only: [:show]

  end
