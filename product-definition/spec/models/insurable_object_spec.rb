# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InsurableObject, type: :model do
  subject { insurable_objects(:base) }

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

  context 'when the associations are present' do
    it { should belong_to(:coverage).without_validating_presence }
    it { should have_many(:products) }
  end
end
