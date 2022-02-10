# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create pricing', type: :request do
  let(:payload) do
    {
      premium: '5000',
      iva: '950',
      total_premium: '5950',
      coverage_id: '1',
      insurable_object_id: '1',
      product_id: '2'
    }
  end

  subject(:request) { post '/v1/pricings', params: payload }

  context 'when the request includes all params' do
    it 'returns a created status' do
      request
      expect(response).to have_http_status :created
    end

    it 'creates a pricing in the database' do
      expect { request }.to change(Pricing, :count).by(1)
    end

    context 'when the premium has already been taken' do
      before do
        payload[:premium] = nil
        request
      end

      it 'returns an unprocessable_entity status' do
        expect(response).to have_http_status :unprocessable_entity
      end

      it 'returns an error message' do
        expect(response_body[:premium].first).to eq I18n.t('errors.messages.blank')
      end
    end
  end
end
