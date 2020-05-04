# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'covid19_data_ruby/version'

Gem::Specification.new do |s| 
  s.name        = 'covid19_data_ruby'
  s.version     = Covid19DataRuby::VERSION
  s.summary     = "This is Covid19Data"
  s.authors     = ["Jillian Somera"]
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'https://github.com/jaerodyne/covid19-data-ruby'
  s.license     = 'MIT' 
  s.description = "A Ruby wrapper for the coronavirus API at https://github.com/ExpDev07/coronavirus-tracker-api"
  s.platform      = Gem::Platform::RUBY

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "rake", ">= 12.3.3"
  s.add_development_dependency "pry"
  s.add_development_dependency "rspec"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"
end