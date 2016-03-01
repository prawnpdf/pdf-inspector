# encoding: utf-8

puts "PDF::Inspector specs: Running on Ruby Version: #{RUBY_VERSION}"

if ENV["COVERAGE"]
  require "simplecov"
  SimpleCov.start
end

require_relative "../lib/pdf/inspector"
