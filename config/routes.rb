Rails.application.routes.draw do
  resources :artists, only: [:index, :show]
  resources :artworks, only: [:index, :show]
end
