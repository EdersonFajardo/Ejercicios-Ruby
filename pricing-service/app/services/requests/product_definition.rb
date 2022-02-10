# frozen_string_literal: true

require 'faraday'

module Requests
  class ProductDefinition
    class NotFoundError < StandardError; end
    PRODUCT_DEFINITION_PATH = (ENV['PRODUCT_DEFINITION_URL']).to_s

    def get(id)
      @conn = Faraday.new
      response = @conn.get("#{ PRODUCT_DEFINITION_PATH }/#{ id }", nil, nil)
      if response.success?
        JSON.parse(response.body, symbolize_names: true)
      else
        raise NotFoundError
      end
    end
  end
end
