
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'pkg-query'

Gem::Specification.new do |spec|
    spec.name          = 'pkg-query'
    spec.version       = PkgQuery::VERSION
    spec.authors       = ['Alejandro Blanco López']
    spec.email         = ['alexbl1996@gmail.com']
    spec.summary       = 'A gem to query packages versions across distributions.'
    spec.description   = 'A gem to query packages versions across distributions.'
    spec.homepage      = "https://github.com/blalop/pkg-query"
    spec.license       = 'MIT'
  
    spec.files         = `git ls-files -z`.split("\x0")
    spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
    spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
    spec.require_paths = ['lib']
  end