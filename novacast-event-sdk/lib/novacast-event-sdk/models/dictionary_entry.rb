module NovacastSDK
  module EventV1
    module Models
      # 
      class DictionaryEntry < NovacastSDK::BaseModel
        attr_accessor :locale, :usage_key, :category, :context, :is_sys

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'locale' => { base_name: 'locale', type: 'String', required: false },
            
            # 
            :'usage_key' => { base_name: 'usage_key', type: 'String', required: false },
            
            # 
            :'category' => { base_name: 'category', type: 'String', required: false },
            
            # 
            :'context' => { base_name: 'context', type: 'String', required: false },
            
            # 
            :'is_sys' => { base_name: 'is_sys', type: 'Integer', required: false }
            
          }
        end
      end
    end
  end
end
