module NovacastSDK
  module EventV1
    module Models
      # 
      class WhitelistedUserList < NovacastSDK::BaseModel
        attr_accessor :entries

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # a collection of white-listed entries
            :'entries' => { base_name: 'entries', type: 'Array[WhitelistedUser]', required: true }
          }
        end
      end
    end
  end
end
