Rails.application.routes.draw do
  resources :tasks
  resources :chosen_heros
  resources :heros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/register', to: 'users#register'
  post '/login', to: 'users#login'
  get '/users', to: 'users#index'
  get '/profile', to: 'users#profile'
end
