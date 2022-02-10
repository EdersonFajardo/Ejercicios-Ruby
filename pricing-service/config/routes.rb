# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    resources :pricings, only: %i[show create]
  end
end
