Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :artists, only: [:index, :show]
      resources :artworks, only: [:index, :show]
    end
  end
end
