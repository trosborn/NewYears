Goalsy::Application.routes.draw do

  get "mycalendar/index"

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  devise_for :goals
  devise_for :events

  resources :posts do
    resources :comments
  end

  resources :goals do
    resources :comments
  end

  resources :events

  get "welcome/index"

  root 'welcome#index'
end