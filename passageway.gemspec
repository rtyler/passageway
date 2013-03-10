# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'passageway/version'

Gem::Specification.new do |spec|
  spec.name          = "passageway"
  spec.version       = Passageway::VERSION
  spec.authors       = ["R. Tyler Croy"]
  spec.email         = ["tyler@monkeypox.org"]
  spec.description   = "A Ruby-based client for localtunnel"
  spec.summary       = "This is a fork off the original localtunnel Ruby gem, which has since been deprecated"
  spec.homepage      = "https://github.com/rtyler/passageway"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
