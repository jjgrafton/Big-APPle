Rails.application.routes.draw do  
  devise_for :users 
  root "schedules#index" 
 
  # get 'home/home' 
  # devise_for :users 
  get 'sessions/new' 
  get 'users/sign_in'
 
  resources :schedules 
  resources :activities 
  resources :users 
end 
