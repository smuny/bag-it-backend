Rails.application.routes.draw do

  resources :comment, only: [:index, :create, :update, :delete]
  resources :items, only: [:index]

  get "/comments", to: "comments#index"
  get "/items", to: "items#index"

end
