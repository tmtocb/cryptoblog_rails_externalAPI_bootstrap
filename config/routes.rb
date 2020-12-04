Rails.application.routes.draw do
  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/prices', to: 'pages#prices'
end
