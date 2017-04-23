# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'finerworks2/version'

Gem::Specification.new do |spec|
  spec.name          = "finerworks2"
  spec.version       = Finerworks2::VERSION
  spec.authors       = ["Jeff Fredrickson"]
  spec.email         = ["jeff.fredrickson@gmail.com"]

  spec.summary       = %q{Ruby interface for the FinerWorks Web API V2}
  spec.description   = %q{This gem wraps the FinerWorks Web API (version 2) in order to provide an easy way to utilize the API in Ruby apps.}
  spec.homepage      = "https://github.com/jfredrickson/finerworks2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
