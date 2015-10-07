# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'YUniversity/version'

Gem::Specification.new do |spec|
  spec.name          = "YUniversity"
  spec.version       = YUniversity::VERSION
  spec.authors       = ["rewin0087"]
  spec.email         = ["erwin_rulezzz87@yahoo.com"]

  spec.summary       = %q{List of Worldwide universities.}
  spec.description   = %q{List of Worldwide universities. Data source from webometrics.info}
  spec.homepage      = "https://github.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
