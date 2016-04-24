Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :users
  resources :lessons
  
  get 'lessons/:id/notes/new', to: 'notes#new', as: 'new_note'
  resources :notes
end
