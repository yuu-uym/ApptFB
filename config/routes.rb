Rails.application.routes.draw do
  devise_for :users
  root to: 'appointments#index'
  resources :checks
  resources :admins
  resources :appointments do
   resources :evaluations
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
