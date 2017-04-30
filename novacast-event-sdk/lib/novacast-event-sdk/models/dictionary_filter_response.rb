module NovacastSDK
  module EventV1
    module Models
      # 
      class DictionaryFilterResponse < NovacastSDK::BaseModel
        attr_accessor :entries

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'entries' => { base_name: 'entries', type: 'Array[DictionaryEntry]', required: false }
            
          }
        end
      end
    end
  end
end
