# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts, only: %i[index show], param: :slug
  get "index", to: "static#index"
  get "about", to: "static#about"
  get "contact", to: "static#contact"
  root "static#index"
end
