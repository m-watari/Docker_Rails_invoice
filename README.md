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

local
・docker-compose up
・docker-compose exec web bash
・rails s -b 0.0.0.0

sample,route
Rails.application.routes.draw do
  get 'photos', to: 'photos#index'
  post 'photos', to: 'photos#create'
  get 'photos/new', to: 'photos#new', as: 'new_photo'
  get 'photos/:id/edit', to: 'photos#edit', as: 'edit_photo'
  get 'photos/:id', to: 'photos#show', as: 'photo'
  patch 'photos/:id', to: 'photos#update'
  put 'photos/:id', to: 'photos#update'
  delete 'photos/:id', to: 'photos#destroy'
end
