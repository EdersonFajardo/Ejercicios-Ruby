# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Show a product', type: :request do
  let(:product_id) { products(:base).id }
  subject(:request) { get "/v1/products/#{ product_id }" }
  before { request }

  describe '#show' do
    context 'when the product does not exist' do
      let(:product_id) { 'not_found' }

      it 'returns a not_found status' do
        expect(response).to have_http_status :not_found
      end
    end

    context 'when the product exists' do
      it 'returns an ok status' do
        expect(response).to have_http_status :ok
      end
    end
  end
end
