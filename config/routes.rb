Rails.application.routes.draw do
  get 'contacts/index'
  root "teams#index"
  get 'portfolios/index'

  end
