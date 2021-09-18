Rails.application.routes.draw do
  root to: redirect('/en/rooms')
  scope "/:locale" do
    resources :rooms
    resources :services
    resources :categories
    resources :issues
    resources :feedbacks
    resources :orders
    resources :issues_managers
    resources :issues_manager_controllers
    resources :issues_managers
    devise_scope :user do
      get 'users/sign_out' => 'users/sessions#destroy'
    end
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations'
    }
    match 'issues_manager/:id/close' => 'issues#close', as: :issues_close, via: [:post, :get]
    match 'issues_manager/:id/proceed' => 'issues#proceed', as: :issues_proceed, via: [:post, :get]
    match 'issues/:id/mark_closed' => 'issues#mark_closed', as: :issues_mark_closed, via: [:post, :get]
    get :send_order_mail, to: 'rooms#send_order_mail', as: :send_order_mail
    resources :users
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :rooms do
    member do
      delete :delete_image_attachment
    end
  end
end
