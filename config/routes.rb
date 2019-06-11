Rails.application.routes.draw do
  resources :products, only: [:index, :show] do
    # create is only for adding products to the order
    resources :orders, only: [:create]
  end

  # updating is only for paying
  resources :orders, only: [:show, :update]

  resources :customers, only: [:new, :create]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
