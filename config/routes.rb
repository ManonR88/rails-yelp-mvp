Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :create, :new, :show ] do
    resources :reviews, only: [ :create, :new ]
  end
end
