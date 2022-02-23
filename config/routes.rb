Rails.application.routes.draw do
  resources :manufacturers
  devise_for :users
  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/faq', to: 'pages#faq'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
