Rails.application.routes.draw do
  root "teams#index"
  get 'portfolios/index'
  get 'contacts/index'
  get 'contacts/new'
  post 'contacts/create'
end
