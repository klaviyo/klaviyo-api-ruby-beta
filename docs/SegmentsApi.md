# KlaviyoBetaAPI::SegmentsApi

All URIs are relative to *https://a.klaviyo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_segment_tags**](SegmentsApi.md#get_segment_tags) | **GET** /api/segments/{segment_id}/tags/ | Get Segment Tags |


## get_segment_tags

> Hash&lt;String, Object&gt; get_segment_tags(segment_id, opts)

Get Segment Tags

Returns all tags that belong to the given segment<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Segments Read` `Tags Read`

### Examples

```ruby
require 'time'
require 'klaviyo-api-beta-sdk'
# setup authorization
KlaviyoBetaAPI.configure do |config|
  # Configure API key authorization: Klaviyo-API-Key
  config.api_key['Klaviyo-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Klaviyo-API-Key'] = 'Bearer'
end

api_instance = KlaviyoBetaAPI::SegmentsApi.new
segment_id = 'segment_id_example' # String | 
opts = {
  fields_tag: ['name'] # Array<String> | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
}

begin
  # Get Segment Tags
  result = api_instance.get_segment_tags(segment_id, opts)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_tags: #{e}"
end
```

#### Using the get_segment_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_segment_tags_with_http_info(segment_id, opts)

```ruby
begin
  # Get Segment Tags
  data, status_code, headers = api_instance.get_segment_tags_with_http_info(segment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **String** |  |  |
| **fields_tag** | [**Array&lt;String&gt;**](String.md) | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

