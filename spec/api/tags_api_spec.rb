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

# Unit tests for KlaviyoBetaAPI::TagsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TagsApi' do
  before do
    # run before each test
    @api_instance = KlaviyoBetaAPI::TagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsApi' do
    it 'should create an instance of TagsApi' do
      expect(@api_instance).to be_instance_of(KlaviyoBetaAPI::TagsApi)
    end
  end

  # unit tests for create_tag
  # Create Tag
  # Create a tag. An account cannot have more than **500** unique tags. A tag belongs to a single tag group. If the &#x60;tag_group_id&#x60; is not specified, the tag is added to the account&#39;s default tag group.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60; &#x60;Tags Write&#x60;
  # @param tag_create_query 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'create_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_tag_group
  # Create Tag Group
  # Create a tag group. An account cannot have more than **50** unique tag groups. If &#x60;exclusive&#x60; is not specified, the tag group defaults to being non-exclusive. If a tag group is non-exclusive, then any given related resource (campaign, flow, etc.) can be linked to multiple tags from that tag group. If a tag group is exclusive, then any given related resource can only be linked to one tag from that tag group.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60; &#x60;Tags Write&#x60;
  # @param tag_group_create_query 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'create_tag_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_tag_relationships
  # Create Tag Relationships
  # Associate a tag with other resources. Any given resource cannot be associated with more than **100** tags. The &#x60;related_resource&#x60; can be one of &#x60;campaigns&#x60;, &#x60;flows&#x60;, &#x60;lists&#x60;, or &#x60;segments&#x60;. Use the request body to pass in the ID(s) of the related resource(s) that will be associated with the tag. The scopes listed below are conditionally required depending on the specified related resource.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Flows Write&#x60; &#x60;Lists Write&#x60; &#x60;Segments Write&#x60; &#x60;Tags Write&#x60;
  # @param id 
  # @param related_resource 
  # @param tag_segment_op 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_tag_relationships test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_tag
  # Delete Tag
  # Delete the tag with the given ID. Any associations between the tag and other resources will also be removed.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60; &#x60;Tags Write&#x60;
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'delete_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_tag_group
  # Delete Tag Group
  # Delete the tag group with the given ID. Any tags inside that tag group, and any associations between those tags and other resources, will also be removed. The default tag group cannot be deleted.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60; &#x60;Tags Write&#x60;
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'delete_tag_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_tag_relationships
  # Delete Tag Relationships
  # Remove a tag&#39;s association with other resources. The &#x60;related_resource&#x60; can be one of &#x60;campaigns&#x60;, &#x60;flows&#x60;, &#x60;lists&#x60;, or &#x60;segments&#x60;. Use the request body to pass in the ID(s) of the related resource(s) whose association with the tag will be removed. The scopes listed below are conditionally required depending on the specified related resource.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Flows Write&#x60; &#x60;Lists Write&#x60; &#x60;Segments Write&#x60; &#x60;Tags Write&#x60;
  # @param id 
  # @param related_resource 
  # @param tag_segment_op 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_tag_relationships test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tag
  # Get Tag
  # Retrieve the tag with the given ID.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60;
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields_tag For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
  # @return [Hash<String, Object>]
  describe 'get_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tag_group
  # Get Tag Group
  # Retrieve the tag group with the given ID.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60;
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields_tag_group For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
  # @return [Hash<String, Object>]
  describe 'get_tag_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tag_group_relationships
  # Get Tag Group Relationships
  # When &#x60;related_resource&#x60; is &#x60;tags&#x60;, returns the IDs of all tags inside the given tag group.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60;
  # @param id 
  # @param related_resource 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'get_tag_group_relationships test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tag_groups
  # Get Tag Groups
  # List all tag groups in an account. Every account has one default tag group. Tag groups can be filtered by &#x60;name&#x60;, &#x60;exclusive&#x60;, and &#x60;default&#x60;, and sorted by &#x60;name&#x60; or &#x60;id&#x60; in ascending or descending order. Returns a maximum of 25 tag groups per request, which can be paginated with [cursor-based pagination](https://developers.klaviyo.com/en/v2022-10-17/reference/api_overview#pagination).&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields_tag_group For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
  # @option opts [String] :filter For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#filtering&lt;br&gt;Allowed field(s)/operator(s):&lt;br&gt;&#x60;name&#x60;: &#x60;contains&#x60;, &#x60;ends-with&#x60;, &#x60;equals&#x60;, &#x60;starts-with&#x60;&lt;br&gt;&#x60;exclusive&#x60;: &#x60;equals&#x60;&lt;br&gt;&#x60;default&#x60;: &#x60;equals&#x60;
  # @option opts [String] :page_cursor For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#pagination
  # @option opts [String] :sort For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sorting
  # @return [Hash<String, Object>]
  describe 'get_tag_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tag_relationships
  # Get Tag Relationships
  # Get the relationships for a tag. If &#x60;related_resource&#x60; is &#x60;tag-group&#x60;, the request will return the ID of the tag group to which the tag belongs. If &#x60;related_resource&#x60; is set to &#x60;campaigns&#x60;, &#x60;flows&#x60;, &#x60;lists&#x60;, or &#x60;segments&#x60;, the request will return the IDs of all resources of that type that have been associated with the tag. The scopes listed below are conditionally required depending on the specified related resource.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Flows Read&#x60; &#x60;Lists Read&#x60; &#x60;Segments Read&#x60; &#x60;Tags Read&#x60;
  # @param id 
  # @param related_resource 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'get_tag_relationships test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tags
  # Get Tags
  # List all tags in an account. Tags can be filtered by &#x60;name&#x60;, and sorted by &#x60;name&#x60; or &#x60;id&#x60; in ascending or descending order. Returns a maximum of 50 tags per request, which can be paginated with [cursor-based pagination](https://developers.klaviyo.com/en/v2022-10-17/reference/api_overview#pagination).&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields_tag For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
  # @option opts [String] :filter For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#filtering&lt;br&gt;Allowed field(s)/operator(s):&lt;br&gt;&#x60;name&#x60;: &#x60;contains&#x60;, &#x60;ends-with&#x60;, &#x60;equals&#x60;, &#x60;starts-with&#x60;
  # @option opts [String] :page_cursor For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#pagination
  # @option opts [String] :sort For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sorting
  # @return [Hash<String, Object>]
  describe 'get_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_tag
  # Update Tag
  # Update the tag with the given ID. Only a tag&#39;s &#x60;name&#x60; can be changed. A tag cannot be moved from one tag group to another.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60; &#x60;Tags Write&#x60;
  # @param id 
  # @param tag_update_query 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'update_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_tag_group
  # Update Tag Group
  # Update the tag group with the given ID. Only a tag group&#39;s &#x60;name&#x60; can be changed. A tag group&#39;s &#x60;exclusive&#x60; or &#x60;default&#x60; value cannot be changed.&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Tags Read&#x60; &#x60;Tags Write&#x60;
  # @param id 
  # @param tag_group_update_query 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'update_tag_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end