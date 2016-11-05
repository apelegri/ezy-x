Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  resources :flats, only: [:index, :show]
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
end
