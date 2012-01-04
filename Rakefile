require 'rubygems'
require 'rake'

begin
  gem 'jeweler', '~> 1.6.4'
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "graylog2-realtime-provider"
    gem.summary = 'Provides WebSocket for Graylog2 realtime features.'
    gem.description = 'Allows you to use Realtime features with Graylog2'
    gem.email = "lennart@socketfeed.com"
    gem.homepage = "http://github.com/Graylog2/graylog2-realtime-provider"
    gem.authors = "Lennart Koopmann"
    gem.add_dependency "json"
    gem.add_dependency "mongo", '~> 1.5.2'
    gem.add_dependency "em-websocket", '~> 0.3.6'
    gem.add_dependency "bson_ext", '~> 1.5.2'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :test => :check_dependencies

task :default => :test
