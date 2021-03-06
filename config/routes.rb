Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  namespace :api, defaults: {format: :json} do
    resources :items, only: [:index] do
      resources :auctions, only: [:create]
      resources :autobids, only: [:create] do
        collection do
          post 'remove'
        end
      end
    end
  end

  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  mount Sidekiq::Web => '/sidekiq'
end
