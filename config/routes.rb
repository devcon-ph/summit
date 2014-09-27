Rails.application.routes.draw do
  devise_for :users
  mount Devcon::Summit::API => '/api'

  root 'pages#home'
end
