Rails.application.routes.draw do
  root "collections#index"
  resources :artworks
  resources :collections
end
