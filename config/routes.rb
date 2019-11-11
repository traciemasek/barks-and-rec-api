Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :admins
      resources :adopters
      resources :dogs
      resources :applications
      resources :favorites
      resources :tasks
      resources :notifications, only: [:update]

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
