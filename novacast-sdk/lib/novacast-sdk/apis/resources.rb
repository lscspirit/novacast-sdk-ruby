module Novacast
  module API
    module Resources
      class Error < Novacast::SDK::JsonRepresentation
        property :errors, exec_context: :decorator

        def errors
          case represented
            when String then [represented]
            when Array then represented
            when ActiveRecord::Base then represented.errors
            else [represented.to_s]
          end
        end

        def errors=(val)
          represented.errors = val
        end
      end
    end
  end
end