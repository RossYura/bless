Rails.application.routes.draw do
  namespace :admin do
      
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
