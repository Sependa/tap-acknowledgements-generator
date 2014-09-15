# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods_acknowledgements_generator/version.rb'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-acknowledgements-generator"
  spec.version       = CocoapodsAcknowledgementsGenerator::VERSION
  spec.authors       = ["Pawel Dudek"]
  spec.summary       = %q{CocoaPods plugin that generates a html file which includes the acknowlegements metadata.}
  spec.homepage      = "git@github.com:Taptera/tap-acknowledgements-generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
