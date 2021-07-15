Rails.application.routes.draw do
  resources :room_images
  resources :images
  resources :issues
  resources :categories
  resources :room_services
  resources :feedbacks
  resources :orders
  resources :rooms
  resources :services
  resources :users
  resources :samples
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
