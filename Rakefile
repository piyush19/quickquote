require 'rspec/core/rake_task'
require 'cucumber/rake/task'

RSpec::Core::RakeTask.new("unit")
Cucumber::Rake::Task.new("cucumber")

task :default => ["unit", "cucumber"]