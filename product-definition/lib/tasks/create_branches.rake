# frozen_string_literal: true

namespace :branches do
  desc 'create branches'
  task create: :environment do
    create_branches
  end
end

def create_branches
  %w[Hurto Terremoto Incendio Inundacion].each do |name|
    Branch.find_or_initialize_by(name: name).tap(&:save!)
  end
end
