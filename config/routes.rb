Rails.application.routes.draw do
      #nested routes
      resources :artists do
        resources :songs, only: [:index, :show]
      end
      resources :songs

      #namespaced routes to organize
      namespace :admin do
        resources :preferences, only: [:index]
      end
end
