# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/brainfuck_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-brainfuck_generator"
  spec.version       = Ruboty::BrainfuckGenerator::VERSION
  spec.authors       = ["cielavenir"]
  spec.email         = ["cielartisan@gmail.com"]
  spec.summary       = "Ruboty Brainfuck Generator"
  spec.description   = "Ruboty Brainfuck Generator"
  spec.homepage      = "https://github.com/"+spec.authors.first+"/"+spec.name
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
