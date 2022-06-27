Rails.application.routes.draw do
  root 'top#index'
  devise_for :users
  get 'users/show'
  resources :posts
  resources :calendars
  resource :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end