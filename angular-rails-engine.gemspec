# -*- encoding: utf-8 -*-
require File.expand_path('../lib/angular-rails-engine/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "angular-rails-engine"
  s.version     = AngularRailsEngine::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Yen-Ju Chen"]
  s.email       = ["yjchenx@gmail.com"]
  s.homepage    = "https://github.com/yjchen/angular-rails-engine"
  s.description = %q{Angular.js for Rails 3}
  s.summary     = s.description
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.signing_key = File.join(Dir.home,'/.gem/trust/gem-private_key.pem')
  s.cert_chain = ['gem-public_cert.pem']

  s.add_dependency "railties", ">= 3.2"
end

