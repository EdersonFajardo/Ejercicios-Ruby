# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create insurable object', type: :request do
  let(:id) { coverages(:base).id }
  let(:payload) { { name: 'insurable object name', description: 'descripcion de un objeto', coverage_id: id } }

  subject(:request) { post '/v1/insurable_objects', params: payload }

  context 'when the request includes all params' do
    it 'returns a created status' do
      request
      expect(response).to have_http_status :created
    end

    it 'creates an insurable object in the database' do
      expect { request }.to change(InsurableObject, :count).by(1)
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
