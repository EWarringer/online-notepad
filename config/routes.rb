Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :books, only: [:index, :show, :create, :new]
end
