# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'authenticate-s3-url/version'

Gem::Specification.new do |s|
  s.name          = "authenticate-s3-url"
  s.version       = AuthenticateS3Url::VERSION
  s.authors       = ["Amol, Gourav, Swati, Varun"]
  s.email         = [""]
  s.summary       = %q{TODO: Write a short summary. Required.}
  s.description   = %q{TODO: Write a longer description. Optional.}
  s.homepage      = ""
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency('activemodel')

  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "debugger"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
