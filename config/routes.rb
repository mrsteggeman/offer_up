Rails.application.routes.draw do
  resources :messages
  resources :item_lists
  devise_for :users
  resources :users
  resources :items
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
