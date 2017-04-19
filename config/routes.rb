Rails.application.routes.draw do
  root "restaurants#index"
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :create, :index, :new ]
  end
  # resources :reviews, only: [ :index, :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
