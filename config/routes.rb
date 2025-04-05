Rails.application.routes.draw do
  # Dashboard as homepage
  root "pages#dashboard"

  # Tasks routes
  resources :tasks

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA manifest (optional)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
