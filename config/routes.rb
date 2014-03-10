Goalsy::Application.routes.draw do
  devise_for :users
  devise_for :goals
  resources :goals

  get "welcome/index"
  resources :posts

  root 'welcome#index'
end
