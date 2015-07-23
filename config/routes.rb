Rails.application.routes.draw do
  get 'magazines/index'

  root 'advertisements#index'
  devise_for :users

  resources :advertisements
  resources :magazines
end
