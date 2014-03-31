require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'foodcritic'

namespace :style do
  desc 'Run Ruby style checks'
  Rubocop::RakeTask.new(:ruby)

  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ['any'],
      tags: %w()
    }
  end
end

desc 'Run all style checks'
task style: ['style:chef', 'style:ruby']

desc 'Run ChefSpec examples'
RSpec::Core::RakeTask.new(:spec)

desc 'Run all tests on Travis'
task travis: ['style', 'spec']

task default: ['style', 'spec']
