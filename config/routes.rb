Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :facilities, only: [:index, :show]
      resources :galleries, only: [:index, :show]
      resources :notices, only: [:index, :show]
      resources :teams, only: [:index, :show]
      resources :team_categories, only: [:index, :show]
      resources :intro, only: [:index, :show]
      resources :about, only: [:index, :show]
      resources :admissions, only: [:index, :show]
      resources :footers, only: [:index, :show]
      resources :splashes, only: [:index, :show]
      post :admissions, to: 'admissions#create'
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
