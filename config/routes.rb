Rails.application.routes.draw do

  root to: 'pages#home'
  get '/about', to: 'pages#about'

  get 'root' => 'flat#show'
  get 'landing/index' => 'landing#index'
  match '/admin', to: 'admin/flats#index', via: :get
  devise_for :users
  get 'about', to: 'pages#about'
  resources :flats, only: [:index, :show]
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  ActiveAdmin.routes(self)
end
