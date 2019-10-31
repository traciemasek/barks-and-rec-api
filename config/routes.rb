Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :admins
      resources :adopters
      resources :dogs
    end
  end

end
