Rails.application.routes.draw do
  devise_for :users
  resources :user
  root to: 'home#index'

end
