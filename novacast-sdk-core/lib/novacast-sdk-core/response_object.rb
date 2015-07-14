require 'ostruct'

module Novacast
  module SDK
    class ResponseObject < OpenStruct
      def as_json(options = nil)
        @table.as_json(options)
      end
    end
  end
end