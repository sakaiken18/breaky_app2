Rails.application.routes.draw do
  get 'completeds/create'
  get 'completeds/destroy'
  get 'mypage/show'
  root 'top#index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  get 'users/show'
  resources :posts
  resources :calendars
  resource :users, only: :show
  resource :mypage, only: :show
  resource :top, only: :index
  resources :posts do
    resource :completeds, only: [:create, :destroy]
  end
end