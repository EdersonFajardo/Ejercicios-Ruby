# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    resources :branches, only: %i[index show create]
    resources :coverages
    resources :insurable_objects
    resources :products
  end
end
