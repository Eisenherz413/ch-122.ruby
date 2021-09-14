Rails.application.routes.draw do
  root to: redirect('/en/rooms')
  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
  end
  match 'issues/:id/mark_closed' => 'issues#mark_closed', as: :issues_mark_closed, via: [:post, :get]
  get :send_order_mail, to: 'rooms#send_order_mail', as: :send_order_mail

  scope "/:locale" do
    resources :rooms
    resources :services
    resources :categories
    resources :issues
    resources :feedbacks
    resources :orders
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations'
    }
    resources :users
  end

  resources :rooms do
    member do
      delete :delete_image_attachment
    end

  end
end
