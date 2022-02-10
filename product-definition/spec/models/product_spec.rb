# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { products(:base) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid without a description' do
    subject.description = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  it 'is invalid without a url' do
    subject.url = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  it 'is invalid without a num_conditioned' do
    subject.num_conditioned = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  it 'is invalid without a num_technical_note' do
    subject.num_technical_note = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  it 'is invalid without a prime_min' do
    subject.prime_min = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  it 'is invalid without a prime_max' do
    subject.prime_max = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  it 'is invalid without a validity' do
    subject.validity = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  context 'when the associations are present' do
    it { should belong_to(:insurable_object).without_validating_presence }
  end
end
