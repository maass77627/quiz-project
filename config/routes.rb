Rails.application.routes.draw do

  resources :comments
  resources :questions
  resources :users
  get '/test', to: 'application#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
