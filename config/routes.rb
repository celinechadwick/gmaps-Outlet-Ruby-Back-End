Rails.application.routes.draw do
  get 'places/index'
  resources :places, only: [:index]
  root 'places#index'

  resources :users do
            resources :places

            collection do
              post "/login" => "users#login"
            end
        end
end
