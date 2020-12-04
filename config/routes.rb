Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  
  root 'pages#home'
  get '/about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
