Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :admins, only: [:index]
      resources :adopters, only: [:index, :create]
      resources :dogs, only: [:index, :create, :update]
      resources :applications, only: [:index, :create, :update]
      resources :favorites, only: [:index, :create, :delete]
      resources :tasks, only: [:index, :create, :update]
      resources :notifications, only: [:update, :index]

      mount ActionCable.server => '/cable'

      post "/signup", to: "adopters#create"
      post "/adopter_login", to: "auth#adopter_login"
      post "admin_login", to: "auth#admin_login"
      get "/auto_login_admin", to: "auth#auto_login_admin"
      get "/auto_login_adopter", to: "auth#auto_login_adopter"
      get "/auto_login", to: "auth#auto_login"
    end
  end

end
