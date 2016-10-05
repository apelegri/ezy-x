Rails.application.routes.draw do
  root to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  get 'flats', to: 'flats#index'
  get 'flats/:id', to: 'flats#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
