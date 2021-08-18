Rails.application.routes.draw do
  root to: 'rooms#index', as: 'rooms_index'

  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations'
    }
  end
  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
  end
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
  scope "(:locale)" , locale: /#{I18n.available_locales.join("|")}/ do
    root 'rooms#index'
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
  end

  resources :rooms

  get :send_order_mail, to: 'rooms#send_order_mail', as: :send_order_mail
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
