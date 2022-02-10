# frozen_string_literal: true

module Pricings
  class CreatePricing
    class NotFoundError < StandardError; end

    IVA = 0.19
    attr_reader :pricing, :params

    def initialize(pricing, params)
      @pricing = pricing
      @params = params
    end

    def product
      request = Requests::ProductDefinition.new
      @product ||= request.get(params[:product_id])
    end

    def excute!
      pricing.premium = premium_calculate(params[:selection][:insurable_value].to_f)
      pricing.iva = pricing.premium * IVA
      pricing.total_premium = pricing.premium + pricing.iva
      pricing.coverage_id = params[:selection][:coverage_id]
      pricing.insurable_object_id = params[:selection][:insurable_object_id]
      pricing.product_id = product[:id]

      pricing.save!
    end

    private

    def premium_calculate(insurable_value)
      rate * insurable_value
    end

    ###########################################################
    def rate
      if params[:selection][:coverage_id].to_i == product[:insurable_object][:coverage][:id] && params[:selection][:insurable_object_id].to_i == product[:insurable_object][:id]
        product[:insurable_object][:coverage][:rate].to_f
      else
        raise NotFoundError.new 'rate not found in product'
      end
    end
    #############################################################
  end
end
