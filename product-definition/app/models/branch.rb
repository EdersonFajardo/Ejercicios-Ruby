# frozen_string_literal: true

class Branch < ApplicationRecord
  has_many :coverages

  validates :name, presence: true
  validates_uniqueness_of :name
end
