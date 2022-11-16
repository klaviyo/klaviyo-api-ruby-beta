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
require 'date'

# Unit tests for KlaviyoBetaAPI::SubscriptionCreateJobCreateQueryAsSubResource
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KlaviyoBetaAPI::SubscriptionCreateJobCreateQueryAsSubResource do
  let(:instance) { KlaviyoBetaAPI::SubscriptionCreateJobCreateQueryAsSubResource.new }

  describe 'test an instance of SubscriptionCreateJobCreateQueryAsSubResource' do
    it 'should create an instance of SubscriptionCreateJobCreateQueryAsSubResource' do
      expect(instance).to be_instance_of(KlaviyoBetaAPI::SubscriptionCreateJobCreateQueryAsSubResource)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["profile-subscription-bulk-create-job"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "attributes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
