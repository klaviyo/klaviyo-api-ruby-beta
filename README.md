# Ruby SDK for Klaviyo Beta API

- SDK version: 2.0.0
- API revision: 2022-12-15.pre

## Helpful Resources

- [API Reference](https://developers.klaviyo.com/en/v2022-12-15.pre/reference)
- [API Guides](https://developers.klaviyo.com/en/docs)
- [Postman Workspace](https://www.postman.com/klaviyo/workspace/klaviyo-developers)

## Design & Approach

NOTE: This SDK only reflects the endpoints currently in Beta. Once endpoints are promoted from Beta to General Availability (GA), they will be removed from the next version of this SDK, and the version of this SDK corresponding to that Beta release will be deprecated.

This SDK is a thin wrapper around our current Beta API. See our API Reference for full documentation on behavior.

## Organization

This SDK is organized into the following resources:



- Campaigns



- DataPrivacy



- Flows



- Lists



- Segments



- Tags




# Installation


## Build

To build the Ruby code into a gem:

```shell
gem build klaviyo-api-beta-sdk.gemspec
```

Then install the gem locally:

```shell
gem install ./klaviyo-api-beta-sdk-2.0.0.gem
```


Finally add this to the Gemfile:

    gem 'klaviyo-api-beta-sdk', '~> 2.0.0'

To install directly from rubygems:

```shell
gem install klaviyo-api-beta-sdk
```

# Usage Example

### To load the gem

```ruby
# Load the gem
require 'klaviyo-api-beta-sdk'

# Setup authorization
KlaviyoBetaAPI.configure do |config|
  config.api_key['Klaviyo-API-Key'] = 'Klaviyo-API-Key your-api-key'
  #config.max_retries = 5 # optional
  #config.max_delay = 60 # optional
end
```

NOTE: 
* The SDK retries on resolvable errors, namely: rate limits (common) and server errors on klaviyo (rare).
* `max_retry` denotes number of attempts the client will make in order to execute the request successfully.
* `max_delay` denotes total delay (in seconds) across all attempts.

### To call the `get_campaigns` operation:

```ruby
opts = {
  include: ['tags'],
  sort: 'name',
  filter: 'equals(archived,false)',
  fields_campaign: ['status','audiences.included']
}

begin
  result = KlaviyoBetaAPI::Campaigns.get_campaigns(opts)
end
```

# Error Handling

This SDK throws an `ApiException` error when the server returns a non-`2XX` response. 
```ruby
begin
  result = KlaviyoBetaAPI::Campaigns.get_campaigns(opts)
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling get_campaigns #{e}"
end
```

# Comprehensive list of Operations & Parameters

_**NOTE:**_
- Organization: Resource groups and operation_ids are listed in alphabetical order, first by Resource name, then by **OpenAPI Summary**. Operation summaries are those listed in the right side bar of the [API Reference](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_events).
- For example values / data types, as well as whether parameters are required/optional, please reference the corresponding API Reference link.
- Some args are required for the API call to succeed, the API docs above are the source of truth regarding which params are required.

## Method signatures
- `get` operations can be passed an optional `opts` object (e.g. `get_campaigns(opts)`).
`opts` describes the available options for fetching data (some operations only support a subset of these or none).
i.e.
```ruby
opts = {
  include: ['tags'],
  sort: 'name',
  filter: 'equals(archived,false)',
  fields_campaign: ['status','audiences.included']
}
```
**Note, for parameters that use square brackets such as `page[cursor]` or `fields[campaign]` ruby will replace the square brackets `[]` with `_` underscores (e.g: `page_cursor`).

- For `create`, `update` & some `delete` operations (i.e. `create_campaign` or `update_campaign` or `delete_campaign`)
the `body` object is required in the method signature (i.e. `update_campaign(body)`).
```ruby
body = {
  data: {
    type: "campaign",
    id: "YOUR_CAMPAIGN_ID
    attributes: {
      name: "My New Campaign Name",
    }
  }
}
KlaviyoBetaAPI::Campaigns.update_campaign(body)
```





## Campaigns


#### [Assign Campaign Message Template](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/assign_campaign_message_template)

```ruby
KlaviyoBetaAPI::Campaigns.assign_campaign_message_template(body)
```





#### [Create Campaign](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/create_campaign)

```ruby
KlaviyoBetaAPI::Campaigns.create_campaign(body)
```





#### [Create Campaign Clone](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/create_campaign_clone)

```ruby
KlaviyoBetaAPI::Campaigns.create_campaign_clone(body)
```





#### [Create Campaign Send Job](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/create_campaign_send_job)

```ruby
KlaviyoBetaAPI::Campaigns.create_campaign_send_job(body)
```





#### [Delete Campaign](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/delete_campaign)

```ruby
KlaviyoBetaAPI::Campaigns.delete_campaign(id)
```





#### [Get Campaign](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_campaign)

```ruby
KlaviyoBetaAPI::Campaigns.get_campaign(id, opts)
```





#### [Get Campaign Message](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_campaign_message)

```ruby
KlaviyoBetaAPI::Campaigns.get_campaign_message(id, opts)
```





#### [Get Campaign Relationships](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_campaign_relationships)

```ruby
KlaviyoBetaAPI::Campaigns.get_campaign_relationships(id, related_resource)
```





#### [Get Campaign Send Job](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_campaign_send_job)

```ruby
KlaviyoBetaAPI::Campaigns.get_campaign_send_job(id, opts)
```





#### [Get Campaign Tags](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_campaign_tags)

```ruby
KlaviyoBetaAPI::Campaigns.get_campaign_tags(campaign_id, opts)
```





#### [Get Campaigns](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_campaigns)

```ruby
KlaviyoBetaAPI::Campaigns.get_campaigns(opts)
```





#### [Update Campaign](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/update_campaign)

```ruby
KlaviyoBetaAPI::Campaigns.update_campaign(id, body)
```





#### [Update Campaign Message](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/update_campaign_message)

```ruby
KlaviyoBetaAPI::Campaigns.update_campaign_message(id, body)
```





#### [Update Campaign Send Job](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/update_campaign_send_job)

```ruby
KlaviyoBetaAPI::Campaigns.update_campaign_send_job(id, body)
```






## DataPrivacy


#### [Request Profile Deletion](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/request_profile_deletion)

```ruby
KlaviyoBetaAPI::DataPrivacy.request_profile_deletion(body)
```






## Flows


#### [Get Flow Tags](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_flow_tags)

```ruby
KlaviyoBetaAPI::Flows.get_flow_tags(flow_id, opts)
```






## Lists


#### [Get List Tags](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_list_tags)

```ruby
KlaviyoBetaAPI::Lists.get_list_tags(list_id, opts)
```






## Segments


#### [Get Segment Tags](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_segment_tags)

```ruby
KlaviyoBetaAPI::Segments.get_segment_tags(segment_id, opts)
```






## Tags


#### [Create Tag](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/create_tag)

```ruby
KlaviyoBetaAPI::Tags.create_tag(body)
```





#### [Create Tag Group](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/create_tag_group)

```ruby
KlaviyoBetaAPI::Tags.create_tag_group(body)
```





#### [Create Tag Relationships](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/create_tag_relationships)

```ruby
KlaviyoBetaAPI::Tags.create_tag_relationships(id, related_resource, body)
```





#### [Delete Tag](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/delete_tag)

```ruby
KlaviyoBetaAPI::Tags.delete_tag(id)
```





#### [Delete Tag Group](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/delete_tag_group)

```ruby
KlaviyoBetaAPI::Tags.delete_tag_group(id)
```





#### [Delete Tag Relationships](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/delete_tag_relationships)

```ruby
KlaviyoBetaAPI::Tags.delete_tag_relationships(id, related_resource, body)
```





#### [Get Tag](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_tag)

```ruby
KlaviyoBetaAPI::Tags.get_tag(id, opts)
```





#### [Get Tag Group](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_tag_group)

```ruby
KlaviyoBetaAPI::Tags.get_tag_group(id, opts)
```





#### [Get Tag Group Relationships](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_tag_group_relationships)

```ruby
KlaviyoBetaAPI::Tags.get_tag_group_relationships(id, related_resource)
```





#### [Get Tag Groups](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_tag_groups)

```ruby
KlaviyoBetaAPI::Tags.get_tag_groups(opts)
```





#### [Get Tag Relationships](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_tag_relationships)

```ruby
KlaviyoBetaAPI::Tags.get_tag_relationships(id, related_resource)
```





#### [Get Tags](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/get_tags)

```ruby
KlaviyoBetaAPI::Tags.get_tags(opts)
```





#### [Update Tag](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/update_tag)

```ruby
KlaviyoBetaAPI::Tags.update_tag(id, body)
```





#### [Update Tag Group](https://developers.klaviyo.com/en/v2022-12-15.pre/reference/update_tag_group)

```ruby
KlaviyoBetaAPI::Tags.update_tag_group(id, body)
```





# Appendix

## Per Request API key
```ruby
opts = {
  header_params: {
    'Authorization': 'Klaviyo-API-Key your-api-key',
  },
  debug_auth_names: []
}
 
response = KlaviyoBetaAPI::Campaigns.get_campaigns(opts)
```
