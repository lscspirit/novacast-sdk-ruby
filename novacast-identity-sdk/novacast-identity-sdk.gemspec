# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'novacast-identity-sdk/version'

Gem::Specification.new do |spec|
  spec.name          = 'novacast-identity-sdk'
  spec.version       = NovacastSDK::IdentityV1::VERSION
  spec.authors       = ['Derrick Yeung', 'Jacky Chow']
  spec.email         = ['derrick@nova.hk']

  spec.summary       = 'Novacast Identity Service API'
  spec.description   = 'Novacast API SDK'
  spec.homepage      = ''
  spec.license       = 'None'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ''
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib', 'rspec']

  spec.add_dependency 'novacast-sdk-core', '~> 0.2'

  spec.add_development_dependency 'rspec', '~> 3.0'
end
