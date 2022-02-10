# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Show a pricing', type: :request do
  let(:pricing_id) { pricings(:base).id }
  subject(:request) { get "/v1/pricings/#{ pricing_id }" }
  before { request }

  describe '#show' do
    context 'when the pricing does not exist' do
      let(:pricing_id) { 'not_found' }

      it 'returns a not_found status' do
        expect(response).to have_http_status :not_found
      end
    end

    context 'when the pricing exists' do
      it 'returns an ok status' do
        expect(response).to have_http_status :ok
      end
    end
  end
end
