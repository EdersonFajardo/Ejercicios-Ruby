# frozen_string_literal: true

class InsurableObjectSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :description
  belongs_to :coverage
end
