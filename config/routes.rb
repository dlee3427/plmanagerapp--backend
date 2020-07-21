Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users
    resources :game, only: [:index, :new, :create]
    resources :workout, only: [:index, :new, :create, :delete]
    resources :player, only: [:index, :new, :create, :show, :edit, :update, :delete]
    resources :team, only: [:new, :create, :show, :edit, :update]
    resources :formation, only: [:index, :show]
    resources :exercise, only: [:new, :create, :delete]
  end

end
