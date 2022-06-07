Rails.application.routes.draw do
  get 'users/show'
  root 'top#index'
  resources :posts
  devise_for :users
  resources :calendars
  resouece :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
