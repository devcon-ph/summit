Rails.application.routes.draw do
  use_doorkeeper
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  mount Devcon::Summit::API => '/api'

  namespace :api do
    namespace :v2 do
      get '/me' => 'credentials#me'
    end
  end

  root 'pages#home'
end
