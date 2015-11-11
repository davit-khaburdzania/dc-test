Rails.application.routes.draw do
  resources :patients, only: [:index, :show, :update]
  resources :consultations, only: [:update]
end
