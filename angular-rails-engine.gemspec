# -*- encoding: utf-8 -*-
require File.expand_path('../lib/angular-rails-engine/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "angular-rails-engine"
  gem.version     = AngularRailsEngine::Rails::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Yen-Ju Chen"]
  gem.email       = ["yjchenx@gmail.com"]
  gem.homepage    = "https://github.com/yjchen/angular-rails-engine"
  gem.description = %q{Angular.js for Rails 3}
  gem.summary     = gem.description

  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]

  gem.add_dependency "railties", ">= 3.0"
  gem.add_development_dependency "bundler", ">= 1.0"
  gem.add_development_dependency "rake"
end

