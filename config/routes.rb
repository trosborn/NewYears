Goalsy::Application.routes.draw do
  devise_for :users
  resources :goals

  get "welcome/index"
  resources :posts

  root 'welcome#index'
end
