# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'authkeys/version'

Gem::Specification.new do |spec|
  spec.name          = "authkeys"
  spec.version       = Authkeys::VERSION
  spec.authors       = ["Joshua B. Bussdieker"]
  spec.email         = ["jbussdieker@gmail.com"]
  spec.summary       = %q{Manage authorized keys files}
  spec.homepage      = "https://github.com/jbussdieker/authkeys"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
