Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  
  resources :customers, only: [:index]
  post 'customers/upload', to: 'customers#upload'
end
