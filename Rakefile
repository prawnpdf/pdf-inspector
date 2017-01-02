require "bundler"
Bundler.setup

require 'rake'
require 'rspec/core/rake_task'
require 'rubygems/package_task'

task :default => [:spec]

desc "Run all rspec files"
RSpec::Core::RakeTask.new("spec") do |c|
  c.rspec_opts = "-t ~unresolved"
end

spec = Gem::Specification.load "pdf-inspector.gemspec"
Gem::PackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end

desc "Run a console with Prawn loaded"
task :console do
  require 'irb'
  require 'irb/completion'
  require_relative 'lib/pdf/inspector'

  ARGV.clear
  IRB.start
end

require 'yard'
YARD::Rake::YardocTask.new do |t|
  t.options = ['--output-dir', 'doc/html']
end
task docs: :yard
