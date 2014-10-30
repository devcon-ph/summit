Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  mount Devcon::Summit::API => '/api'

  root 'pages#home'
end
