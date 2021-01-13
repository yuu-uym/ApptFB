Rails.application.routes.draw do
  devise_for :users
  root to: 'appointments#index'
  post 'appointments/:id/evaluations/:id', to: 'admins#create'
  resources :checks
  resources :admins, only: [:index, :show]
  resources :appointments do
   resources :evaluations, only: [:index, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
