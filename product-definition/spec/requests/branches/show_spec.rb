# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Show a branch', type: :request do
  let(:branch_id) { branches(:base).id }
  subject(:request) { get "/v1/branches/#{ branch_id }" }
  before { request }

  describe '#show' do
    context 'when the branch does not exist' do
      let(:branch_id) { 'not_found' }

      it 'returns a not_found status' do
        expect(response).to have_http_status :not_found
      end
    end

    context 'when the branch exists' do
      it 'returns an ok status' do
        expect(response).to have_http_status :ok
      end
    end
  end
end
