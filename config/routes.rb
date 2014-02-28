Redit::Application.routes.draw do

  root "stories#index"
  resources :users do
    
  end
end
