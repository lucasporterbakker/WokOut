Rails.application.routes.draw do

  devise_for :users
  resources :meals do
    resources :bookings, except: [:index]
  end

  get '/search', to: 'pages#search', as: 'search'

  root to: 'pages#home'
  get '/profile/:id' , to: "pages#profile", as: 'profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
