Rails.application.routes.draw do

  namespace :api do

    namespace :v1 do
      resources :facilities, only: :index
      resources :galleries, only: :index
      resources :notices, only: :index
      resources :teams, only: :index
      resources :team_categories, only: :index
    end
  end






  resources :footers
  resources :splashes
  resources :admissions
  resources :intros
  devise_for :users do
    get 'login', to: 'devise/sessions#new'
  end
  resources :notices
  resources :teams
  resources :galleries
  resources :abouts
  resources :facilities
  resources :dashboards
  resources :displays
  resources :team_categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#index"
end
