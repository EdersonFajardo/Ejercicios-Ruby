# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pricing, type: :model do
  subject { pricings(:base) }
  context 'when some attribute is nil' do
    it 'has a product_id error' do
      subject.product_id = nil
      subject.valid?
      expect(subject.errors).to include(:product_id)
    end

    it 'has a insurable_object_id error' do
      subject.insurable_object_id = nil
      subject.valid?
      expect(subject.errors).to include(:insurable_object_id)
    end

    it 'has a coverage_id error' do
      subject.coverage_id = nil
      subject.valid?
      expect(subject.errors).to include(:coverage_id)
    end

    it 'has a premium error' do
      subject.premium = nil
      subject.valid?
      expect(subject.errors).to include(:premium)
    end

    it 'has a total_premium error' do
      subject.total_premium = nil
      subject.valid?
      expect(subject.errors).to include(:total_premium)
    end
  end
end
