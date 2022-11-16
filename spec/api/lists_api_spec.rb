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

# Unit tests for KlaviyoBetaAPI::ListsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ListsApi' do
  before do
    # run before each test
    @api_instance = KlaviyoBetaAPI::ListsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ListsApi' do
    it 'should create an instance of ListsApi' do
      expect(@api_instance).to be_instance_of(KlaviyoBetaAPI::ListsApi)
    end
  end

  # unit tests for get_list_tags
  # Get List Tags
  # Return all tags associated with the given list ID.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;List Read&#x60; &#x60;Tags Read&#x60;
  # @param list_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields_tag For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
  # @return [Hash<String, Object>]
  describe 'get_list_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end