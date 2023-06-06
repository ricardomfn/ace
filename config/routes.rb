Rails.application.routes.draw do
  devise_for :users
  root to: "matches#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :matches do
    resources :requests, only: [:new, :create, :update]
  end
  resources :requests, only: [:show, :destroy]

  patch 'accept_requests/:id', to: 'requests#accepted?', as: 'accept_request'
  patch 'refuse_requests/:id', to: 'requests#refused?', as: 'refuse_request'

end
