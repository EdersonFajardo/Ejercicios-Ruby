# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create product', type: :request do
  let(:id) { insurable_objects(:base).id }
  let(:payload) do
    {
      name: 'products name',
      description: 'descripcion de un producto',
      url: 'http://localhost:3000/v1/products/',
      num_conditioned: '1',
      num_technical_note: '1',
      prime_min: '10',
      prime_max: '20',
      validity: 'monthly',
      insurable_object_id: id
    }
  end

  subject(:request) { post '/v1/products', params: payload }

  context 'when the request includes all params' do
    it 'returns a created status' do
      request
      expect(response).to have_http_status :created
    end

    it 'creates a product in the database' do
      expect { request }.to change(Product, :count).by(1)
    end

    context 'when the name has already been taken' do
      before do
        payload[:name] = nil
        request
      end

      it 'returns an unprocessable_entity status' do
        expect(response).to have_http_status :unprocessable_entity
      end

      it 'returns an error message' do
        expect(response_body[:name].first).to eq I18n.t('errors.messages.blank')
      end
    end
  end
end
