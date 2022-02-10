# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'List branches', type: :request do
  subject(:request) { get '/v1/branches' }

  describe '#index' do
    context 'when the branches exists' do
      before { request }

      it 'returns an ok status' do
        expect(response).to have_http_status :ok
      end

      it 'returns an array of branches' do
        expect(response_body).to be_an(Array)
      end
    end
  end
end
