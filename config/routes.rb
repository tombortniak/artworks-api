Rails.application.routes.draw do
  root to: "api/v1/errors#not_found"
  namespace :api do
    namespace :v1 do
      resources :artists, only: [:index, :show]
      resources :artworks, only: [:index, :show]
    end
  end
  match "*path", to: "api/v1/errors#not_found", via: :all
end
