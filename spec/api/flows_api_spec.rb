=begin
#Klaviyo API (Beta)

#The Klaviyo REST API. Please visit https://developers.klaviyo.com for more details.

The version of the OpenAPI document: 2022-11-14.pre
Contact: developers@klaviyo.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KlaviyoBetaAPI::FlowsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FlowsApi' do
  before do
    # run before each test
    @api_instance = KlaviyoBetaAPI::FlowsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlowsApi' do
    it 'should create an instance of FlowsApi' do
      expect(@api_instance).to be_instance_of(KlaviyoBetaAPI::FlowsApi)
    end
  end

  # unit tests for get_flow_tags
  # Get Flow Tags
  # Return all tags that belong to the given flow.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Flows Read&#x60; &#x60;Tags Read&#x60;
  # @param flow_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields_tag For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
  # @return [Hash<String, Object>]
  describe 'get_flow_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
