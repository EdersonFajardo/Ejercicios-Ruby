# frozen_string_literal: true

class Pricing < ApplicationRecord
  validates :product_id, :premium, :iva, :total_premium, :coverage_id, :insurable_object_id, presence: true
end
