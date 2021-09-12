Rails.application.routes.draw do
  root to: redirect('/en/rooms')
  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
  end
  resources :samples
  get :send_order_mail, to: 'rooms#send_order_mail', as: :send_order_mail

  scope "/:locale" do
    resources :rooms
    resources :services
    resources :categories
    resources :issues
    resources :feedbacks
    resources :orders
      devise_for  :users do
        resources :registrations
        resources :sessions
        resources :confirmations
      end
    resources :users
  end

  resources :rooms do
    member do
      delete :delete_image_attachment
    end

  end
end
