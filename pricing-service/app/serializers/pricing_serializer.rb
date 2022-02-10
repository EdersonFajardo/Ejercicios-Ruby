# frozen_string_literal: true

class PricingSerializer < ActiveModel::Serializer
  attributes :product_id
  attributes :premium
  attributes :iva
  attributes :total_premium
  attributes :coverage_id
  attributes :insurable_object_id
end
