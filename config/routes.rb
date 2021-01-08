Rails.application.routes.draw do
  devise_for :users
  root to: 'appointments#index'
  resources :appointments 
  resources :checks
  resources :admins

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
