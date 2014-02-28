Redit::Application.routes.draw do

  root "stories#index"
  resources :users
  resources :stories

  get "/login", to: "sessions#new"
  post "/session", to: "sessions#create"
  delete "/session", to: "sessions#destroy"

end
