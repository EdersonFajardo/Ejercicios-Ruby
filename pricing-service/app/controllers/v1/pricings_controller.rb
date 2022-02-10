# frozen_string_literal: true

module V1
  class PricingsController < ApplicationController
    rescue_from Pricings::CreatePricing::NotFoundError, with: :unprocessable_entity
    rescue_from Requests::ProductDefinition::NotFoundError, with: :unprocessable_entity

    before_action :pricing, only: %i[show]

    def show
      render json: @pricing
    end

    def create
      @pricing = Pricing.new
      service = Pricings::CreatePricing.new(@pricing, pricing_params)
      service.excute!

      if @pricing.save
        render json: @pricing, status: :created
      else
        render json: @pricing.errors, status: :unprocessable_entity
      end
    end

    private

    def pricing
      @pricing = Pricing.find(params[:id])
    end

    def pricing_params
      params.permit(:product_id, selection: %i[coverage_id insurable_object_id insurable_value])
    end

    def unprocessable_entity(exception)
      render json: { errors: exception.to_s }, status: :unprocessable_entity
    end
  end
end
