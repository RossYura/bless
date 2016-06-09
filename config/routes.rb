Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do

  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :posts, only: [:create, :destroy]
end
