# frozen_string_literal: true

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => exception
  puts exception.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.fixture_path = "#{ ::Rails.root }/spec/fixtures"
  config.use_transactional_fixtures = true

  config.global_fixtures = :all

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
  config.include ActiveSupport::Testing::TimeHelpers
  config.include ::RequestHelper
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
