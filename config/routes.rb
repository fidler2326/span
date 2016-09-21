Rails.application.routes.draw do
  devise_for :users
  resources :clients
  resources :projects
  resources :time_entries
end
