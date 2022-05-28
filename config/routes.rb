Rails.application.routes.draw do
  root 'top#index'
  devise_for :users
  resources :calendars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
