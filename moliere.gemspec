# -*- encoding: utf-8 -*-

require File.expand_path('../lib/moliere/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "moliere"
  gem.version       = Moliere::VERSION
  gem.summary       = %q{A romantic and chimerical programming language.}
  gem.description   = %q{Moliere is a french object-oriented programming language with some functional characteristics.}
  gem.license       = "MIT"
  gem.authors       = ["bertrandk"]
  gem.email         = "b.karerangabo@gmail.com"
  gem.homepage      = "https://github.com/bertrandk/moliere"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
  gem.add_development_dependency 'yard', '~> 0.8'
  gem.add_development_dependency 'racc', '~> 1.4.9'
end
