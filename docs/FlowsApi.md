# KlaviyoBetaAPI::FlowsApi

All URIs are relative to *https://a.klaviyo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_flow_tags**](FlowsApi.md#get_flow_tags) | **GET** /api/flows/{flow_id}/tags/ | Get Flow Tags |


## get_flow_tags

> Hash&lt;String, Object&gt; get_flow_tags(flow_id, opts)

Get Flow Tags

Return all tags that belong to the given flow.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Flows Read` `Tags Read`

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

api_instance = KlaviyoBetaAPI::FlowsApi.new
flow_id = 'flow_id_example' # String | 
opts = {
  fields_tag: ['name'] # Array<String> | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
}

begin
  # Get Flow Tags
  result = api_instance.get_flow_tags(flow_id, opts)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling FlowsApi->get_flow_tags: #{e}"
end
```

#### Using the get_flow_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_flow_tags_with_http_info(flow_id, opts)

```ruby
begin
  # Get Flow Tags
  data, status_code, headers = api_instance.get_flow_tags_with_http_info(flow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling FlowsApi->get_flow_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** |  |  |
| **fields_tag** | [**Array&lt;String&gt;**](String.md) | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

