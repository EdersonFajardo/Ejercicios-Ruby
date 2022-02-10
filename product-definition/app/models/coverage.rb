# frozen_string_literal: true

class Coverage < ApplicationRecord
  belongs_to :branch
  has_many :insurable_objects

  validates :name, :description, :rate, :min_limit, :max_limit, presence: true
  validates_uniqueness_of :name
end
