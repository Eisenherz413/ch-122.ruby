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

  resources :rooms do
    collection do
      match 'search' => 'rooms#search', via: [:get, :post], as: :search
    end
  end

  # get :send_order_mail, to: 'orders#send_order_mail', as: :send_order_mail
  get :send_order_mail, to: 'rooms#send_order_mail', as: :send_order_mail
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
