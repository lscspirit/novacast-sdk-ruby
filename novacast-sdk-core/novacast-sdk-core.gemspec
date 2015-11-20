# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'novacast-sdk-core/version'

Gem::Specification.new do |spec|
  spec.name          = 'novacast-sdk-core'
  spec.version       = NovacastSDK::Core::VERSION
  spec.authors       = ['lscspirit']
  spec.email         = ['lscspirit@hotmail.com']

  spec.summary       = 'Novacast SDK Core'
  spec.description   = 'Novacast SDK Core'
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

  spec.add_dependency 'addressable',   '~> 2.0'
  spec.add_dependency 'virtus', '~> 1.0'
end
