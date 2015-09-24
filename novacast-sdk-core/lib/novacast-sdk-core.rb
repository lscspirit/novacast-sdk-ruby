require 'novacast-sdk-core/errors'
require 'novacast-sdk-core/json_representation'

module Novacast
  module SDK
    autoload :Client,         'novacast-sdk-core/client'
    autoload :Operation,      'novacast-sdk-core/operation'
    autoload :Request,        'novacast-sdk-core/request'
    autoload :RequestBuilder, 'novacast-sdk-core/request_builder'
    autoload :Response,       'novacast-sdk-core/response'
    autoload :ErrorResponseHelper, 'novacast-sdk-core/error_response'
  end
end