module NovacastSDK
  module EventV1
    module Models
      # 
      class PagingDetails < NovacastSDK::BaseModel
        attr_accessor :current, :total, :per_page, :item_count

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # current page number
            :'current' => { base_name: 'current', type: 'Integer', required: true },
            
            # total number of pages
            :'total' => { base_name: 'total', type: 'Integer', required: true },
            
            # number of items per page
            :'per_page' => { base_name: 'per_page', type: 'Integer', required: true },
            
            # number of items in total in the whole collection
            :'item_count' => { base_name: 'item_count', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
