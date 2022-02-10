# frozen_string_literal: true

class InsurableObject < ApplicationRecord
  belongs_to :coverage
  has_many :products

  validates :name, :description, presence: true
  validates_uniqueness_of :name
end
