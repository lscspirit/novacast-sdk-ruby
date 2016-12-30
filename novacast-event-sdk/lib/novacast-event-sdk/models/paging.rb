module NovacastSDK
  module EventV1
    module Models
      # 
      class Paging < NovacastSDK::BaseModel
        attr_accessor :paging

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # 
            :'paging' => { base_name: 'paging', type: 'PagingDetails', required: false }
          }
        end
      end
    end
  end
end
