module NovacastSDK
  module EventV1
    module Models
      # 
      class UpdateDictionaryDefinitionRequest < NovacastSDK::BaseModel
        attr_accessor :operation, :new_entry

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'operation' => { base_name: 'operation', type: 'String', required: false },
            
            # 
            :'new_entry' => { base_name: 'newEntry', type: 'DictionaryEntry', required: false }
            
          }
        end
      end
    end
  end
end
