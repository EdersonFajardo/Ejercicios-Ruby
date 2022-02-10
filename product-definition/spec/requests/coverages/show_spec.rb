# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Show a coverage', type: :request do
  let(:coverage_id) { coverages(:base).id }
  subject(:request) { get "/v1/coverages/#{ coverage_id }" }
  before { request }

  describe '#show' do
    context 'when the coverage does not exist' do
      let(:coverage_id) { 'not_found' }

      it 'returns a not_found status' do
        expect(response).to have_http_status :not_found
      end
    end

    context 'when the coverage exists' do
      it 'returns an ok status' do
        expect(response).to have_http_status :ok
      end
    end
  end
end
