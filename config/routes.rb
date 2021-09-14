Rails.application.routes.draw do
  resources :issues_managers
  resources :issues_manager_controllers
  root  'rooms#index'
  Rails.application.routes.draw do
  resources :issues_managers
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
  match 'issues/:id/mark_closed' => 'issues#mark_closed', as: :issues_mark_closed, via: [:post, :get]
  resources :issues_manager
  match 'issues_manager/:id/close' => 'issues#close', as: :issues_close, via: [:post, :get]
  match 'issues_manager/:id/proceed' => 'issues#proceed', as: :issues_proceed, via: [:post, :get]
  resources :categories
  resources :room_services
  resources :feedbacks
  resources :orders
  resources :rooms
  resources :services
  resources :users
  resources :samples
  get :send_order_mail, to: 'rooms#send_order_mail', as: :send_order_mail
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
