Rails.application.routes.draw do
  resources :holes
  resources :reviews
  resources :scores
  resources :rounds
  resources :users
  # resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/latlong', to: 'courses#index'
  post '/user_rounds', to: 'courses#user_courses'
  get '/courses', to: 'courses#reauth'
end
