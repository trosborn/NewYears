Goalsy::Application.routes.draw do
  get "mycalendar/index"
  devise_for :users
  devise_for :goals
  resources :goals

  get "welcome/index"

  root 'welcome#index'
end
