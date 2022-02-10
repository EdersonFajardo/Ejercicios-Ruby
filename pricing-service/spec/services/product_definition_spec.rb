# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Requests::ProductDefinition, type: :service do
  describe '#get' do
    subject(:service) { Requests::ProductDefinition.new }
    subject(:not_found_error) { Requests::ProductDefinition::NotFoundError }

    before do
      stub_request(:get, "#{ ENV['PRODUCT_DEFINITION_URL'] }/products/#{ product_id }").to_return(status: status,
        body: payload.to_json)
    end

    context 'when the product definition response ok' do
      let(:product_id) { 'e7ef9b44-0050-4bea-80b0-1a9ade125368' }
      let(:status) { 200 }
      let(:payload) { load_json_symbolized('payloads/response_body.json') }

      it 'returns the product' do
        expect(service.get(product_id)).to eq(payload)
      end

      it 'expects to have a 200 http response' do
        expect { service.get(product_id).to have_http_status :ok }
      end
    end

    context 'when the product with the product_id doesnt exist' do
      let(:product_id) { '12312312' }
      let(:status) { 404 }
      let(:payload) { '404 Product not found' }

      it 'expecs to raise a not found error' do
        expect { service.get(product_id) }.to raise_error(not_found_error)
      end

      it 'expects to have a 404 http response' do
        expect { service.get(product_id).to have_http_status :not_found }
      end
    end
  end
end
