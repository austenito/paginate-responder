# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paginate-responder/version'

Gem::Specification.new do |gem|
  gem.name          = "paginate-responder"
  gem.version       = PaginateResponder::VERSION
  gem.authors       = ["Jan Graichen"]
  gem.email         = ["jg@altimos.de"]
  gem.description   = %q{A Rails pagination responder with link header support.}
  gem.summary       = %q{A Rails pagination responder with link header support.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rack-link_headers', '>= 2.2'
end
