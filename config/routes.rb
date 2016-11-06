Rails.application.routes.draw do

  match '/admin', to: 'admin/flats#index', via: :get
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  devise_for :users
  # get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  resources :flats, only: [:index, :show]
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
end
