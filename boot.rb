require 'rubygems'
require 'bundler'
require_relative 'services/calculator.rb'
# require 'yaml'

RACK_ENV ||= ENV['RACK_ENV'] || "development"

Bundler.require


Dir.mkdir('log') if !File.exist?('log') || !File.directory?('log')
Dir['services/**/*.rb'].each do |path|
  require_relative path
end

require './app.rb'