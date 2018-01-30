# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "laborer_wanted/version"

Gem::Specification.new do |spec|
  spec.name          = "laborer_wanted"
  spec.version       = LaborerWanted::VERSION
  spec.authors       = ["Anthony Mendola"]
  spec.email         = ["<anthonymendola@gmail.com>"]

  spec.summary       = 'Laborer finder'
  spec.description   = 'Scrapes job wanted data from craigslist for laborers'
  spec.homepage      = "https://github.com/Anthony-Mendola/laborer-wanted-cli-app"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ['laborer-wanted']
  spec.require_paths = ["lib", "lib/laborer_wanted"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"


end
