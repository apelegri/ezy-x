Rails.application.routes.draw do

  match '/admin', to: 'admin/flats#index', via: :get
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :flats, only: [:index, :show]
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  ActiveAdmin.routes(self)
end
