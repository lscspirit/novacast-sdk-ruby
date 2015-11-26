module NovacastSDK
  module Rspec
    class Client < NovacastSDK::BaseModel
      attr_accessor :name, :client_id, :company, :employees, :leads

      def self.api_model_module
        NovacastSDK::Rspec
      end

      def self.model_properties
        {
          :'name'      => { base_name: 'name',      type: 'String'  },
          :'client_id' => { base_name: 'client_id', type: 'Integer' },
          :'company'   => { base_name: 'company',   type: 'Company' },
          :'employees' => { base_name: 'employees', type: 'Array[String]' },
          :'leads'     => { base_name: 'leads',     type: 'Array[Company]' }
        }
      end
    end

    class Company < NovacastSDK::BaseModel
      attr_accessor :name

      def self.api_model_module
        NovacastSDK::Rspec
      end

      def self.model_properties
        { :'name' => { base_name: 'name', type: 'String' } }
      end
    end
  end
end

RSpec.describe 'BaseModel', '::new' do
  it 'sets single attribute' do
    comp = NovacastSDK::Rspec::Company.new 'name' => 'Test Company'
    expect(comp.name).to eq('Test Company')
  end

  it 'sets single attribute (with symbol key)' do
    comp = NovacastSDK::Rspec::Company.new name: 'Test Company'
    expect(comp.name).to eq('Test Company')
  end

  it 'sets multiple attributes' do
    client = NovacastSDK::Rspec::Client.new name: 'Test Client', client_id: 1
    expect(client.name).to eq('Test Client')
    expect(client.client_id).to eq(1)
  end

  it 'sets non-primitive attribute' do
    client = NovacastSDK::Rspec::Client.new company: { name: 'Test Company' }
    expect(client.company).to be_a(NovacastSDK::Rspec::Company)
    expect(client.company).not_to be_nil
    expect(client.company.name).to eq('Test Company')
  end

  it 'sets array attribute' do
    client = NovacastSDK::Rspec::Client.new employees: ['Employee 1', 'Employee 2']
    expect(client.employees).to match_array(['Employee 1', 'Employee 2'])
  end

  it 'sets non-primitive attribute' do
    client = NovacastSDK::Rspec::Client.new leads: [ { name: 'Lead 1' }, { name: 'Lead 2' }]
    lead_names = client.leads.map do |l|
      expect(l).to be_a(NovacastSDK::Rspec::Company)
      l.name
    end
    expect(lead_names).to match_array(['Lead 1', 'Lead 2'])
  end
end

RSpec.describe 'BaseModel', '#to_hash' do
  it 'returns the model as a hash' do
    comp = NovacastSDK::Rspec::Company.new 'name' => 'Test Company'
    expect(comp.to_hash).to match(name: 'Test Company')
  end

  it 'returns the model as a hash with available attributes only' do
    client = NovacastSDK::Rspec::Client.new name: 'Test Client', client_id: 1
    expect(client.to_hash).to match(client_id: 1, name: 'Test Client')
  end

  it 'returns the model as a hash with non-primitive attribute' do
    client = NovacastSDK::Rspec::Client.new company: { name: 'Test Company' }
    expect(client.to_hash).to match(company: { name: 'Test Company'})
  end

  it 'returns the model as a hash with array attribute' do
    client = NovacastSDK::Rspec::Client.new employees: ['Employees 1', 'Employees 2']
    expect(client.to_hash).to match(employees: ['Employees 1', 'Employees 2'])
  end

  it 'returns the model as a hash with non-primitive array attribute' do
    client = NovacastSDK::Rspec::Client.new leads: [ { name: 'Lead 1' }, { name: 'Lead 2' }]
    expect(client.to_hash).to match(leads: [ { name: 'Lead 1' }, { name: 'Lead 2' }])
  end
end