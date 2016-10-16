Rails.application.routes.draw do
  root :to => "dashboard#index"

  devise_for :users
  resources :clients
  resources :projects do
    resources :tasks
  end
  resources :time_entries
end
