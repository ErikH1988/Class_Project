Rails.application.routes.draw do

  # SDP: For consistency try and use a consistent approach, why do you have magazines here
  # when you have resources :magazines at the bottom?
  get 'magazines/index'

  # SDP: Usually the root path is placed at the bottom because the roots are processed
  root 'advertisements#index'
  devise_for :users

  # SDP: Aren't advertisements a nested resource of magazines, this is how you've modelled your application
  resources :advertisements
  resources :magazines
end
