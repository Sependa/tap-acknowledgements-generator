# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods_tap_acknowledgements_generator.rb'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-tap-acknowledgements-generator"
  spec.version       = CocoapodsTapAcknowledgementsGenerator::VERSION
  spec.authors       = ["Pawel Dudek"]
  spec.email         = ["p@taptera.com"]
  spec.description   = %q{A short description of cocoapods-tap-acknowledgements-generator.}
  spec.summary       = %q{A longer description of cocoapods-tap-acknowledgements-generator.}
  spec.homepage      = "https://github.com/EXAMPLE/cocoapods-tap-acknowledgements-generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
