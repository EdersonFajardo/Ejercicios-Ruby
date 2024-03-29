# frozen_string_literal: true

module RequestHelper
  def response_body
    JSON.parse(response.body, symbolize_names: true)
  end
end
