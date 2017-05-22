module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountDisplayInfo < NovacastSDK::BaseModel
        attr_accessor :display_name, :username, :name, :email, :company, :title, :country

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # display name
            :'display_name' => { base_name: 'display_name', type: 'String', required: false },
            
            # account user name
            :'username' => { base_name: 'username', type: 'String', required: false },
            
            # name of the user
            :'name' => { base_name: 'name', type: 'String', required: false },
            
            # account email
            :'email' => { base_name: 'email', type: 'String', required: false },
            
            # company
            :'company' => { base_name: 'company', type: 'String', required: false },
            
            # job title
            :'title' => { base_name: 'title', type: 'String', required: false },
            
            # country
            :'country' => { base_name: 'country', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
