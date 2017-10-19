Rails.application.routes.draw do
  # resources :campsites, only: [:index] do
  #   resources :campers, only: [:index]
  # end
  # resources :campers do
  #   resources :supplies, only: [:index]
  # end
  # get 'campers', to: 'campers#index'
  # get 'supplies', to: 'supplies#index'
  namespace :api do
   namespace :v1 do
     resources :campers, only: [:index]
   end
 end
end
