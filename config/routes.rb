Goalsy::Application.routes.draw do
  get "mycalendar/index"
  devise_for :users
  devise_for :goals
  devise_for :events

  resources :goals
  resources :events

  get "welcome/index"

  root 'welcome#index'
end
