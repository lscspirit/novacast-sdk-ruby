module NovacastSDK
  module EventV1
    module Models
      # 
      class PageSessionExceptions < NovacastSDK::BaseModel
        attr_accessor :page_path, :exceptions

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # event page path
            :'page_path' => { base_name: 'page_path', type: 'String', required: true },
            
            # a collection of session exceptions
            :'exceptions' => { base_name: 'exceptions', type: 'Array[SessionException]', required: true }
            
          }
        end
      end
    end
  end
end
