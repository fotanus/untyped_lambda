# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'untyped_lambda/version'

Gem::Specification.new do |spec|
  spec.name          = "untyped_lambda"
  spec.version       = UntypedLambda::VERSION
  spec.authors       = ["Felipe Tanus"]
  spec.email         = ["fotanus@gmail.com"]

  spec.summary       = %q{Toy project that interprates lambda-calculus}
  spec.homepage      = "http://www.github.com/fotanus/untyped_lambda"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
end
