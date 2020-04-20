Rails.application.routes.draw do

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
