Rails.application.routes.draw do
  root :to => "dashboard#index"

  get 'invoice' => 'projects#invoice'

  devise_for :users
  resources :clients
  resources :projects do
    resources :tasks
  end
  resources :time_entries
end
