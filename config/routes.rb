Rails.application.routes.draw do
  root to: 'pages#home'

  ActiveAdmin.routes(self)
  # match '/admin', to: 'admin/flats#index', via: :get
  devise_for :users
  # get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  resources :flats, only: [:index, :show]
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
end
