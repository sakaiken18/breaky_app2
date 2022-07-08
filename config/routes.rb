Rails.application.routes.draw do
  get 'mypage/show'
  root 'top#index'
  devise_for :users
  get 'users/show'
  resources :posts
  resources :calendars
  resource :users, only: :show
  resource :mypage, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end