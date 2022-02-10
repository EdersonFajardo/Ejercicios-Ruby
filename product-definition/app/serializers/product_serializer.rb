# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :description
  attributes :url
  attributes :num_conditioned
  attributes :num_technical_note
  attributes :prime_min
  attributes :prime_max
  attributes :validity
  belongs_to :insurable_object
end
