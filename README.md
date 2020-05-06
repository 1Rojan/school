# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


API

'GET' request api
resources :facilities, only: [:index, :show]
      resources :galleries, only: [:index, :show]
      resources :notices, only: [:index, :show]
      resources :teams, only: [:index, :show]
      resources :team_categories, only: [:index, :show]
      resources :intro, only: [:index, :show]
      resources :about, only: [:index, :show]
      resources :admissions, only: [:index, :show]
      resources :footers, only: [:index, :show]

* Facility     /api/v1/facilities
* Notice     /api/v1/notices
* Team     api/v1/teams
* TeamCategory     api/v1/team_categories
* Intro     api/v1/intro
* About     api/v1/about
* Gallery     api/v1/galleries
* Footer     api/v1/footers