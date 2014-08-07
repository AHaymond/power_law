# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'power_law/version'

Gem::Specification.new do |spec|
  spec.name          = "power_law"
  spec.version       = PowerLaw::VERSION
  spec.authors       = ["Adam Haymond","Todd Resudek"]
  spec.email         = ["adam@masteryconnect.com","todd@masteryconnect.com"]
  spec.summary       = %q{Generate a Marzano Power Law score}
  spec.description   = %q{The Marzano Power Law can be explained through a somewhat complex formula of sums of natural logs.
  The Power Law gem allows you to simply pass in an array of scores ordered by date, and it will return the Power Law score for you,
without the headache of having to digest the formula and recreating the wheel.}
  spec.homepage      = "http://www.github.com/AHaymond/power_law"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
