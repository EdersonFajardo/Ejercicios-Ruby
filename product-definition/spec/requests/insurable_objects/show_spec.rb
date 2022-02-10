# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Show a covarege', type: :request do
  let(:insurable_object_id) { insurable_objects(:base).id }
  subject(:request) { get "/v1/insurable_objects/#{ insurable_object_id }" }
  before { request }

  describe '#show' do
    context 'when the insurable object does not exist' do
      let(:insurable_object_id) { 'not_found' }

      it 'returns a not_found status' do
        expect(response).to have_http_status :not_found
      end
    end

    context 'when the insurable object exists' do
      it 'returns an ok status' do
        expect(response).to have_http_status :ok
      end
    end
  end
end
