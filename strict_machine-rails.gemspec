# coding: utf-8
require_relative "lib/strict_machine/rails"

Gem::Specification.new do |spec|
  spec.name          = "strict_machine-rails"
  spec.version       = StrictMachine::Rails::VERSION
  spec.authors       = ["Bruno Antunes"]
  spec.email         = ["bruno@thoughtbot.com"]

  spec.summary       = "StrictMachine integration for Rails codebases"
  spec.homepage      = "https://not-yet.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features)/})
  }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.2.6"
  spec.add_dependency "strict_machine", "~> 0.2.3"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug"
end
