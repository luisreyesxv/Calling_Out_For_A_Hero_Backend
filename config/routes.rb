Rails.application.routes.draw do
  resources :tasks, except: [:show]
  # resources :chosen_heros #need to finish breaking this one down, was probably going to remove index, and make it give a custom random 3? chosen_heroes
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/chosen_heros', to: "chosen_heros#index"
  patch '/chosen_heros/:id', to: "chosen_heros#update"
  post "/hire", to: "chosen_heros#hire"

  
  post '/register', to: 'users#register'
  post '/login', to: 'users#login'
  get '/users', to: 'users#index'
  get '/profile', to: 'users#profile'
end
