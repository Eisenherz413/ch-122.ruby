Rails.application.routes.draw do
  root to: 'rooms#index', as: 'rooms_index'

  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations'
    }
  end
  # devise_for :users
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
