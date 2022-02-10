# frozen_string_literal: true

class CoverageSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :description
  attributes :rate
  attributes :min_limit
  attributes :max_limit
  attributes :branch_id
end
