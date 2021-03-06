Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :users, only: [:index, :edit, :update]
  resources :members, only: [:index, :new, :create, :edit, :update, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
