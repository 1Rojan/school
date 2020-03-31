Rails.application.routes.draw do

  
  devise_for :users
  resources :notices
  resources :teams
  resources :galleries
  resources :about
  resources :facilities
  resources :dashboards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#index"
end
