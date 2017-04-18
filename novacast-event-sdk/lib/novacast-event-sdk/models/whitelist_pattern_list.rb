module NovacastSDK
  module EventV1
    module Models
      # 
      class WhitelistPatternList < NovacastSDK::BaseModel
        attr_accessor :patterns

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of whitelisted patterns
            :'patterns' => { base_name: 'patterns', type: 'Array[WhitelistPattern]', required: false }
            
          }
        end
      end
    end
  end
end
