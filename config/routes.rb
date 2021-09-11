Rails.application.routes.draw do
  root to: redirect('/en/rooms')
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
  resources :issues
  resources :room_services
  resources :feedbacks
  resources :orders
  resources :samples
  get :send_order_mail, to: 'rooms#send_order_mail', as: :send_order_mail

  scope "/:locale" do
    resources :rooms
    resources :services
    resources :categories
    resources :issues
    resources :users
    # resources :room_services
    # resources :feedbacks
    # resources :orders
  end

  resources :rooms do
    member do
      delete :delete_image_attachment
    end

  end
end
