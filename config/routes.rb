Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Authentication
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  get 'auth/:provider/callback' => 'sessions#omniauth'

  # Application routes
  resources :photos, only: :index
  resource :account, only: [:show, :update]

  root to: redirect('account')
end
