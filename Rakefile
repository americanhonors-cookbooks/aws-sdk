require 'bundler/setup'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'foodcritic'
require 'kitchen'

namespace :style do
  desc 'Run Ruby style checks'
  RuboCop::RakeTask.new(:ruby)

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

namespace :integration do
  desc 'Run Test Kitchen with Vagrant'
  task :vagrant do
    Kitchen.logger = Kitchen.default_file_logger
    config = Kitchen::Config.new
    if ENV['KITCHEN_INSTANCE']
      instances_to_test = ENV['KITCHEN_INSTANCE'].split(',')
      config.instances.each do |instance|
        instance.test(:always) if instances_to_test.include?(Kitchen::Instance.name_for(instance.suite, instance.platform))
      end
    else
      config.instances.each do |instance|
        instance.test(:always)
      end
    end
  end

  desc 'Run Test Kitchen with cloud plugins'
  task :cloud do
    run_kitchen = true
    if ENV['TRAVIS'] == 'true' && ENV['TRAVIS_PULL_REQUEST'] != 'false'
      run_kitchen = false
    end

    if run_kitchen
      Kitchen.logger = Kitchen.default_file_logger
      loader = Kitchen::Loader::YAML.new(project_config: './.kitchen.cloud.yml')
      config = Kitchen::Config.new(loader: loader)
      if ENV['KITCHEN_INSTANCE']
        instances_to_test = ENV['KITCHEN_INSTANCE'].split(',')
        config.instances.each do |instance|
          instance.test(:always) if instances_to_test.include?(Kitchen::Instance.name_for(instance.suite, instance.platform))
        end
      else
        config.instances.each do |instance|
          instance.test(:always)
        end
      end
    end
  end
end

desc 'Run all tests on Travis'
task travis: ['style', 'spec', 'integration:cloud']

task default: ['style', 'spec', 'integration:vagrant']
