# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create coverage', type: :request do
  let(:id) { branches(:base).id }
  let(:payload) { { name: 'coverages name', description: 'descripcion de una cobertura', branch_id: id } }

  subject(:request) { post '/v1/coverages', params: payload }

  context 'when the request includes all params' do
    it 'returns a created status' do
      request
      expect(response).to have_http_status :created
    end

    it 'creates a coverage in the database' do
      expect { request }.to change(Coverage, :count).by(1)
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
