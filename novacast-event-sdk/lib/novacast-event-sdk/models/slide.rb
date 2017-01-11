module NovacastSDK
  module EventV1
    module Models
      # 
      class Slide < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :page, :url, :thumb_url

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # slide uid
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            
            # page number
            :'page' => { base_name: 'page', type: 'Integer', required: true },
            
            # url of the slide image file
            :'url' => { base_name: 'url', type: 'String', required: true },
            
            # url of the slide thumbnail file
            :'thumb_url' => { base_name: 'thumb_url', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
