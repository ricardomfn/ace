Rails.application.routes.draw do
  get 'profile/show'
  get 'stimulus/popup'
  devise_for :users
  root to: "pages#desk"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get 'profile', to: 'pages#profile'
  resources :matches do
    resources :requests, only: [:new, :create, :update]
  end
  resources :requests, only: [:index, :show, :destroy]
  get "games", to: "requests#games"
  get "dashboard", to: "pages#dashboard"
  get "desk", to: "pages#desk"

  resources :leagues do
    resources :memberships, only: [ :new, :create ]
  end

  resources :memberships, only: [:destroy]

  patch 'accept_requests/:id', to: 'requests#accepted?', as: 'accept_request'
  patch 'refuse_requests/:id', to: 'requests#refused?', as: 'refuse_request'

  resources :chatrooms, only: [] do
    resources :messages, only: :create
  end

  get "/chatroom", to: "chatrooms#chatroom"

end
