Rails.application.routes.draw do
  devise_for :users
  root to: 'appointments#index'
  get 'appointments/:id/evaluations/:id', to: 'admins#{@evaluation.appointment.user.id}'
  resources :checks
  resources :admins, only: [:index, :show]
  resources :appointments do
   resources :evaluations, only: [:index, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
