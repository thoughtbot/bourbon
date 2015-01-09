# encoding: utf-8
require "rubygems"
require "bundler"
require "cucumber/rake/task"
require "rspec/core/rake_task"

Bundler::GemHelper.install_tasks
Cucumber::Rake::Task.new
RSpec::Core::RakeTask.new(:spec)

task :default => [:spec, :cucumber]
