Rails.application.routes.draw do
  resources :products, only: [:index, :show] do
    resources :orders, only: [:create]
  end

  resources :orders, only: [:show]

  resources :customers, only: [:new, :create]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
