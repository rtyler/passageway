require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |s|
  s.rspec_opts = '--color --format d --fail-fast --order random'
  s.pattern = 'spec/**_spec.rb'
end
