Rails.application.routes.draw do
  root  'rooms#index'
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
  match 'issues/:id/mark_closed' => 'issues#mark_closed', as: :issues_mark_closed, via: [:post, :get]
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
