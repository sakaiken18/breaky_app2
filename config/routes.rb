Rails.application.routes.draw do
  get 'mypage/show'
  root 'top#index'
  devise_for :users
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  get 'users/show'
  resources :posts
  resources :calendars
  resource :users, only: :show
  resource :mypage, only: :show
  resource :top, only: :index
end