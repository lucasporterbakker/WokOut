Rails.application.routes.draw do

  devise_for :users
  resources :meals do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :show]

  get '/search', to: 'pages#search', as: 'search'

  root to: 'pages#home'
  get '/profile/:id' , to: "pages#profile", as: 'profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
