# frozen_string_literal: true

Rails.application.routes.draw do
  resources :events, only: [:new, :create, :show, :index]
  resources :users, only: %i[new create show]
  resource :session, only: %i[new create destroy]
  root 'users#new'
end
