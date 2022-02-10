# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create branch', type: :request do
  let(:payload) { { name: 'nombre ramo' } }

  subject(:request) { post '/v1/branches', params: payload }

  context 'when the request includes all params' do
    it 'returns a created status' do
      request
      expect(response).to have_http_status :created
    end

    it 'creates a branch in the database' do
      expect { request }.to change(Branch, :count).by(1)
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
