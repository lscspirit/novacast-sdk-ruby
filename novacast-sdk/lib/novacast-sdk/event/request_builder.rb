module Novacast
  module SDK
    module Event
      class RequestBuilder < Novacast::SDK::RequestBuilder
        def build(op)
          case op.options[:access_token]
            when :use
              op.query.merge! access_token: @client.access_token!
            when :optional
              op.query.merge! access_token: @client.access_token
            else
              # do nothing
          end

          super op
        end
      end
    end
  end
end