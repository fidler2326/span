Rails.application.routes.draw do
  root :to => "projects#index"

  devise_for :users
  resources :clients
  resources :projects
  resources :time_entries
end
