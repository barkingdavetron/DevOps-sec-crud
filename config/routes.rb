Rails.application.routes.draw do
  # Sets the default page to the home/dashboard page
  root "pages#dashboard"

  # Tasks
  resources :tasks

  get "up" => "rails/health#show", as: :rails_health_check

  # PWA manifest (optional)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
