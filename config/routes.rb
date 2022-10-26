Rails.application.routes.draw do
  resources :monsters, only: [:index, :new, :create]
  root "monsters#index"
end
