Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :users, only: [:index, :create]
      resources :matches, only: [:index, :new, :create]
      resources :games, only: [:index, :create, :show]
      resources :workouts, only: [:index, :create, :delete, :show]
      resources :players, only: [:index, :create, :show, :update, :destroy]
      resources :teams, only: [:index, :create, :show, :update]
      resources :formations, only: [:index, :show]
      resources :exercises, only: [:index, :new, :create, :update, :destroy]
    end
  end

end
