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

# Unit tests for KlaviyoBetaAPI::DatasApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DatasApi' do
  before do
    # run before each test
    @api_instance = KlaviyoBetaAPI::DatasApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DatasApi' do
    it 'should create an instance of DatasApi' do
      expect(@api_instance).to be_instance_of(KlaviyoBetaAPI::DatasApi)
    end
  end

  # unit tests for create_data_privacy_deletion_job
  # Create Data Privacy Deletion Job
  # Request a data privacy-compliant deletion for the person record corresponding to email address, phone number or person identifier&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Data Privacy Write&#x60;
  # @param data_privacy_create_deletion_job_query 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_data_privacy_deletion_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
