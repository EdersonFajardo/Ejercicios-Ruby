# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Coverage, type: :model do
  subject { coverages(:base) }

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

  it 'is invalid without a rate' do
    subject.rate = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  it 'is invalid without a min_limit' do
    subject.min_limit = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  it 'is invalid without a max_limit' do
    subject.max_limit = nil
    subject.valid?
    expect(subject).not_to be_valid
  end

  context 'when the associations are present' do
    it { should belong_to(:branch).without_validating_presence }
    it { should have_many(:insurable_objects) }
  end
end
