Rails.application.routes.draw do
  mount Qa::Engine => '/authorities'
  mount QaServer::Engine, at: '/'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :welcome, only: 'index'
  root 'qa_server/homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
