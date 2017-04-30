module NovacastSDK
  module EventV1
    module Models
      # 
      class DictionaryQueryResponse < NovacastSDK::BaseModel
        attr_accessor :dictionary, :locale

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'dictionary' => { base_name: 'dictionary', type: 'Object', required: false },
            
            # the calling locale for getting this dictionary
            :'locale' => { base_name: 'locale', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
