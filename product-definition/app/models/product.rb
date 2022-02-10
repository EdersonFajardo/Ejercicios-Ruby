# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :insurable_object

  enum validity: %i[monthly biannual annual]

  validates :name, :description, :url, :num_conditioned, :num_technical_note, :prime_min, :prime_max, :validity,
    presence: true
  validates_uniqueness_of :name
end
