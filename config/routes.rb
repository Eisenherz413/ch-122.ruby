Rails.application.routes.draw do
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
  resources :rooms do
    collection do
      match 'search' => 'rooms#search', via: [:get, :post], as: :search
      end
    end
  end

  resources :rooms

  get :send_order_mail, to: 'rooms#send_order_mail', as: :send_order_mail
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
