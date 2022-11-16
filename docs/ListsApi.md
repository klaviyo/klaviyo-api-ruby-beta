# KlaviyoBetaAPI::ListsApi

All URIs are relative to *https://a.klaviyo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_list_tags**](ListsApi.md#get_list_tags) | **GET** /api/lists/{list_id}/tags/ | Get List Tags |


## get_list_tags

> Hash&lt;String, Object&gt; get_list_tags(list_id, opts)

Get List Tags

Return all tags associated with the given list ID.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `List Read` `Tags Read`

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

api_instance = KlaviyoBetaAPI::ListsApi.new
list_id = 'list_id_example' # String | 
opts = {
  fields_tag: ['name'] # Array<String> | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
}

begin
  # Get List Tags
  result = api_instance.get_list_tags(list_id, opts)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling ListsApi->get_list_tags: #{e}"
end
```

#### Using the get_list_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_list_tags_with_http_info(list_id, opts)

```ruby
begin
  # Get List Tags
  data, status_code, headers = api_instance.get_list_tags_with_http_info(list_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling ListsApi->get_list_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** |  |  |
| **fields_tag** | [**Array&lt;String&gt;**](String.md) | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

