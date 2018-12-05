Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  get 'users/show'
  root "pages#home"
  resources :games
  resources :levels
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
