Rails.application.routes.draw do
  get 'places/index'
  resources :places
  root 'places#index'

  resources :users do
            collection do
              post "/login" => "users#login"
            end
        end
end
