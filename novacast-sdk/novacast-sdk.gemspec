# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'novacast-sdk/version'

Gem::Specification.new do |spec|
  spec.name          = 'novacast-sdk'
  spec.version       = Novacast::SDK::VERSION
  spec.authors       = ['lscspirit']
  spec.email         = ['lscspirit@hotmail.com']

  spec.summary       = 'Novacast API SDK'
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
  spec.require_paths = ['lib']

  spec.add_dependency 'novacast-sdk-core'
end
