module NovacastSDK
  module EventV1
    module Models
      # 
      class PublicAliasList < NovacastSDK::BaseModel
        attr_accessor :aliases

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # list of public aliases
            :'aliases' => { base_name: 'aliases', type: 'Array[PublicAlias]', required: true }
            
          }
        end
      end
    end
  end
end
