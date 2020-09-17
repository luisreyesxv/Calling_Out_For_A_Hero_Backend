Rails.application.routes.draw do
  resources :tasks
  resources :chosen_heros
  resources :heros
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
