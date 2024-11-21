Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Authentication
  get 'login' => 'sessions#new'
  get 'auth/:provider/callback' => 'sessions#omniauth'

  # Application (TBD)
  resources :photos, only: :index

  root to: redirect('photos')
end
