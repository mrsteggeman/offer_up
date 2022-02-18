Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "categories#index"
  resources :messages
  resources :item_lists
  devise_for :users
  resources :users
  resources :items
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
