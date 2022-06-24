Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  root 'top#index'
  resources :posts
  resources :calendars
  resource :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
