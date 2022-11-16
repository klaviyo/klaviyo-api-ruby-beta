# KlaviyoBetaAPI::TagsApi

All URIs are relative to *https://a.klaviyo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tag**](TagsApi.md#create_tag) | **POST** /api/tags/ | Create Tag |
| [**create_tag_group**](TagsApi.md#create_tag_group) | **POST** /api/tag-groups/ | Create Tag Group |
| [**create_tag_relationships**](TagsApi.md#create_tag_relationships) | **POST** /api/tags/{id}/relationships/{related_resource}/ | Create Tag Relationships |
| [**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /api/tags/{id}/ | Delete Tag |
| [**delete_tag_group**](TagsApi.md#delete_tag_group) | **DELETE** /api/tag-groups/{id}/ | Delete Tag Group |
| [**delete_tag_relationships**](TagsApi.md#delete_tag_relationships) | **DELETE** /api/tags/{id}/relationships/{related_resource}/ | Delete Tag Relationships |
| [**get_tag**](TagsApi.md#get_tag) | **GET** /api/tags/{id}/ | Get Tag |
| [**get_tag_group**](TagsApi.md#get_tag_group) | **GET** /api/tag-groups/{id}/ | Get Tag Group |
| [**get_tag_group_relationships**](TagsApi.md#get_tag_group_relationships) | **GET** /api/tag-groups/{id}/relationships/{related_resource}/ | Get Tag Group Relationships |
| [**get_tag_groups**](TagsApi.md#get_tag_groups) | **GET** /api/tag-groups/ | Get Tag Groups |
| [**get_tag_relationships**](TagsApi.md#get_tag_relationships) | **GET** /api/tags/{id}/relationships/{related_resource}/ | Get Tag Relationships |
| [**get_tags**](TagsApi.md#get_tags) | **GET** /api/tags/ | Get Tags |
| [**update_tag**](TagsApi.md#update_tag) | **PATCH** /api/tags/{id}/ | Update Tag |
| [**update_tag_group**](TagsApi.md#update_tag_group) | **PATCH** /api/tag-groups/{id}/ | Update Tag Group |


## create_tag

> Hash&lt;String, Object&gt; create_tag(tag_create_query)

Create Tag

Create a tag. An account cannot have more than **500** unique tags. A tag belongs to a single tag group. If the `tag_group_id` is not specified, the tag is added to the account's default tag group.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read` `Tags Write`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
tag_create_query = KlaviyoBetaAPI::TagCreateQuery.new({data: KlaviyoBetaAPI::TagCreateQueryAsSubResource.new({type: 'tag', attributes: KlaviyoBetaAPI::TagCreateQueryAsSubResourceAttributes.new({name: 'name_example'})})}) # TagCreateQuery | 

begin
  # Create Tag
  result = api_instance.create_tag(tag_create_query)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->create_tag: #{e}"
end
```

#### Using the create_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> create_tag_with_http_info(tag_create_query)

```ruby
begin
  # Create Tag
  data, status_code, headers = api_instance.create_tag_with_http_info(tag_create_query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->create_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_create_query** | [**TagCreateQuery**](TagCreateQuery.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tag_group

> Hash&lt;String, Object&gt; create_tag_group(tag_group_create_query)

Create Tag Group

Create a tag group. An account cannot have more than **50** unique tag groups. If `exclusive` is not specified, the tag group defaults to being non-exclusive. If a tag group is non-exclusive, then any given related resource (campaign, flow, etc.) can be linked to multiple tags from that tag group. If a tag group is exclusive, then any given related resource can only be linked to one tag from that tag group.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read` `Tags Write`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
tag_group_create_query = KlaviyoBetaAPI::TagGroupCreateQuery.new({data: KlaviyoBetaAPI::TagGroupCreateQueryAsSubResource.new({type: 'tag-group', attributes: KlaviyoBetaAPI::TagGroupCreateQueryAsSubResourceAttributes.new({name: 'name_example'})})}) # TagGroupCreateQuery | 

begin
  # Create Tag Group
  result = api_instance.create_tag_group(tag_group_create_query)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->create_tag_group: #{e}"
end
```

#### Using the create_tag_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> create_tag_group_with_http_info(tag_group_create_query)

```ruby
begin
  # Create Tag Group
  data, status_code, headers = api_instance.create_tag_group_with_http_info(tag_group_create_query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->create_tag_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_group_create_query** | [**TagGroupCreateQuery**](TagGroupCreateQuery.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tag_relationships

> create_tag_relationships(id, related_resource, tag_segment_op)

Create Tag Relationships

Associate a tag with other resources. Any given resource cannot be associated with more than **100** tags. The `related_resource` can be one of `campaigns`, `flows`, `lists`, or `segments`. Use the request body to pass in the ID(s) of the related resource(s) that will be associated with the tag. The scopes listed below are conditionally required depending on the specified related resource.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Flows Write` `Lists Write` `Segments Write` `Tags Write`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 
related_resource = 'flows' # String | 
tag_segment_op = KlaviyoBetaAPI::TagSegmentOp.new({data: [KlaviyoBetaAPI::TagSegmentOpDataInner.new({type: 'segment', id: 'id_example'})]}) # TagSegmentOp | 

begin
  # Create Tag Relationships
  api_instance.create_tag_relationships(id, related_resource, tag_segment_op)
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->create_tag_relationships: #{e}"
end
```

#### Using the create_tag_relationships_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_tag_relationships_with_http_info(id, related_resource, tag_segment_op)

```ruby
begin
  # Create Tag Relationships
  data, status_code, headers = api_instance.create_tag_relationships_with_http_info(id, related_resource, tag_segment_op)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->create_tag_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **related_resource** | **String** |  |  |
| **tag_segment_op** | [**TagSegmentOp**](TagSegmentOp.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag

> Hash&lt;String, Object&gt; delete_tag(id)

Delete Tag

Delete the tag with the given ID. Any associations between the tag and other resources will also be removed.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read` `Tags Write`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 

begin
  # Delete Tag
  result = api_instance.delete_tag(id)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> delete_tag_with_http_info(id)

```ruby
begin
  # Delete Tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tag_group

> Hash&lt;String, Object&gt; delete_tag_group(id)

Delete Tag Group

Delete the tag group with the given ID. Any tags inside that tag group, and any associations between those tags and other resources, will also be removed. The default tag group cannot be deleted.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read` `Tags Write`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 

begin
  # Delete Tag Group
  result = api_instance.delete_tag_group(id)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->delete_tag_group: #{e}"
end
```

#### Using the delete_tag_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> delete_tag_group_with_http_info(id)

```ruby
begin
  # Delete Tag Group
  data, status_code, headers = api_instance.delete_tag_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->delete_tag_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tag_relationships

> delete_tag_relationships(id, related_resource, tag_segment_op)

Delete Tag Relationships

Remove a tag's association with other resources. The `related_resource` can be one of `campaigns`, `flows`, `lists`, or `segments`. Use the request body to pass in the ID(s) of the related resource(s) whose association with the tag will be removed. The scopes listed below are conditionally required depending on the specified related resource.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Flows Write` `Lists Write` `Segments Write` `Tags Write`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 
related_resource = 'flows' # String | 
tag_segment_op = KlaviyoBetaAPI::TagSegmentOp.new({data: [KlaviyoBetaAPI::TagSegmentOpDataInner.new({type: 'segment', id: 'id_example'})]}) # TagSegmentOp | 

begin
  # Delete Tag Relationships
  api_instance.delete_tag_relationships(id, related_resource, tag_segment_op)
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->delete_tag_relationships: #{e}"
end
```

#### Using the delete_tag_relationships_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tag_relationships_with_http_info(id, related_resource, tag_segment_op)

```ruby
begin
  # Delete Tag Relationships
  data, status_code, headers = api_instance.delete_tag_relationships_with_http_info(id, related_resource, tag_segment_op)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->delete_tag_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **related_resource** | **String** |  |  |
| **tag_segment_op** | [**TagSegmentOp**](TagSegmentOp.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_tag

> Hash&lt;String, Object&gt; get_tag(id, opts)

Get Tag

Retrieve the tag with the given ID.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 
opts = {
  fields_tag: ['name'] # Array<String> | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
}

begin
  # Get Tag
  result = api_instance.get_tag(id, opts)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag: #{e}"
end
```

#### Using the get_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_tag_with_http_info(id, opts)

```ruby
begin
  # Get Tag
  data, status_code, headers = api_instance.get_tag_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **fields_tag** | [**Array&lt;String&gt;**](String.md) | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag_group

> Hash&lt;String, Object&gt; get_tag_group(id, opts)

Get Tag Group

Retrieve the tag group with the given ID.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 
opts = {
  fields_tag_group: ['name'] # Array<String> | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
}

begin
  # Get Tag Group
  result = api_instance.get_tag_group(id, opts)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_group: #{e}"
end
```

#### Using the get_tag_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_tag_group_with_http_info(id, opts)

```ruby
begin
  # Get Tag Group
  data, status_code, headers = api_instance.get_tag_group_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **fields_tag_group** | [**Array&lt;String&gt;**](String.md) | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag_group_relationships

> Hash&lt;String, Object&gt; get_tag_group_relationships(id, related_resource)

Get Tag Group Relationships

When `related_resource` is `tags`, returns the IDs of all tags inside the given tag group.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 
related_resource = 'tags' # String | 

begin
  # Get Tag Group Relationships
  result = api_instance.get_tag_group_relationships(id, related_resource)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_group_relationships: #{e}"
end
```

#### Using the get_tag_group_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_tag_group_relationships_with_http_info(id, related_resource)

```ruby
begin
  # Get Tag Group Relationships
  data, status_code, headers = api_instance.get_tag_group_relationships_with_http_info(id, related_resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_group_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **related_resource** | **String** |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag_groups

> Hash&lt;String, Object&gt; get_tag_groups(opts)

Get Tag Groups

List all tag groups in an account. Every account has one default tag group. Tag groups can be filtered by `name`, `exclusive`, and `default`, and sorted by `name` or `id` in ascending or descending order. Returns a maximum of 25 tag groups per request, which can be paginated with [cursor-based pagination](https://developers.klaviyo.com/en/v2022-10-17/reference/api_overview#pagination).<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
opts = {
  fields_tag_group: ['name'], # Array<String> | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
  filter: 'filter_example', # String | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#filtering<br>Allowed field(s)/operator(s):<br>`name`: `contains`, `ends-with`, `equals`, `starts-with`<br>`exclusive`: `equals`<br>`default`: `equals`
  page_cursor: 'page_cursor_example', # String | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#pagination
  sort: 'id' # String | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sorting
}

begin
  # Get Tag Groups
  result = api_instance.get_tag_groups(opts)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_groups: #{e}"
end
```

#### Using the get_tag_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_tag_groups_with_http_info(opts)

```ruby
begin
  # Get Tag Groups
  data, status_code, headers = api_instance.get_tag_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields_tag_group** | [**Array&lt;String&gt;**](String.md) | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets | [optional] |
| **filter** | **String** | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#filtering&lt;br&gt;Allowed field(s)/operator(s):&lt;br&gt;&#x60;name&#x60;: &#x60;contains&#x60;, &#x60;ends-with&#x60;, &#x60;equals&#x60;, &#x60;starts-with&#x60;&lt;br&gt;&#x60;exclusive&#x60;: &#x60;equals&#x60;&lt;br&gt;&#x60;default&#x60;: &#x60;equals&#x60; | [optional] |
| **page_cursor** | **String** | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#pagination | [optional] |
| **sort** | **String** | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sorting | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag_relationships

> Hash&lt;String, Object&gt; get_tag_relationships(id, related_resource)

Get Tag Relationships

Get the relationships for a tag. If `related_resource` is `tag-group`, the request will return the ID of the tag group to which the tag belongs. If `related_resource` is set to `campaigns`, `flows`, `lists`, or `segments`, the request will return the IDs of all resources of that type that have been associated with the tag. The scopes listed below are conditionally required depending on the specified related resource.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Flows Read` `Lists Read` `Segments Read` `Tags Read`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 
related_resource = 'flows' # String | 

begin
  # Get Tag Relationships
  result = api_instance.get_tag_relationships(id, related_resource)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_relationships: #{e}"
end
```

#### Using the get_tag_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_tag_relationships_with_http_info(id, related_resource)

```ruby
begin
  # Get Tag Relationships
  data, status_code, headers = api_instance.get_tag_relationships_with_http_info(id, related_resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tag_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **related_resource** | **String** |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tags

> Hash&lt;String, Object&gt; get_tags(opts)

Get Tags

List all tags in an account. Tags can be filtered by `name`, and sorted by `name` or `id` in ascending or descending order. Returns a maximum of 50 tags per request, which can be paginated with [cursor-based pagination](https://developers.klaviyo.com/en/v2022-10-17/reference/api_overview#pagination).<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
opts = {
  fields_tag: ['name'], # Array<String> | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets
  filter: 'filter_example', # String | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#filtering<br>Allowed field(s)/operator(s):<br>`name`: `contains`, `ends-with`, `equals`, `starts-with`
  page_cursor: 'page_cursor_example', # String | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#pagination
  sort: 'id' # String | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sorting
}

begin
  # Get Tags
  result = api_instance.get_tags(opts)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tags: #{e}"
end
```

#### Using the get_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> get_tags_with_http_info(opts)

```ruby
begin
  # Get Tags
  data, status_code, headers = api_instance.get_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->get_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields_tag** | [**Array&lt;String&gt;**](String.md) | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sparse-fieldsets | [optional] |
| **filter** | **String** | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#filtering&lt;br&gt;Allowed field(s)/operator(s):&lt;br&gt;&#x60;name&#x60;: &#x60;contains&#x60;, &#x60;ends-with&#x60;, &#x60;equals&#x60;, &#x60;starts-with&#x60; | [optional] |
| **page_cursor** | **String** | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#pagination | [optional] |
| **sort** | **String** | For more information please visit https://developers.klaviyo.com/en/v/reference/api-overview#sorting | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tag

> Hash&lt;String, Object&gt; update_tag(id, tag_update_query)

Update Tag

Update the tag with the given ID. Only a tag's `name` can be changed. A tag cannot be moved from one tag group to another.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read` `Tags Write`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 
tag_update_query = KlaviyoBetaAPI::TagUpdateQuery.new({data: KlaviyoBetaAPI::TagUpdateQueryAsSubResource.new({type: 'tag', id: 'id_example', attributes: KlaviyoBetaAPI::ListCreateQueryAsSubResourceAttributes.new({name: 'name_example'})})}) # TagUpdateQuery | 

begin
  # Update Tag
  result = api_instance.update_tag(id, tag_update_query)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->update_tag: #{e}"
end
```

#### Using the update_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> update_tag_with_http_info(id, tag_update_query)

```ruby
begin
  # Update Tag
  data, status_code, headers = api_instance.update_tag_with_http_info(id, tag_update_query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->update_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **tag_update_query** | [**TagUpdateQuery**](TagUpdateQuery.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tag_group

> Hash&lt;String, Object&gt; update_tag_group(id, tag_group_update_query)

Update Tag Group

Update the tag group with the given ID. Only a tag group's `name` can be changed. A tag group's `exclusive` or `default` value cannot be changed.<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Tags Read` `Tags Write`

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

api_instance = KlaviyoBetaAPI::TagsApi.new
id = 'id_example' # String | 
tag_group_update_query = KlaviyoBetaAPI::TagGroupUpdateQuery.new({data: KlaviyoBetaAPI::TagGroupUpdateQueryAsSubResource.new({type: 'tag-group', id: 'id_example', attributes: KlaviyoBetaAPI::TagGroupUpdateQueryAsSubResourceAttributes.new({name: 'name_example'})})}) # TagGroupUpdateQuery | 

begin
  # Update Tag Group
  result = api_instance.update_tag_group(id, tag_group_update_query)
  p result
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->update_tag_group: #{e}"
end
```

#### Using the update_tag_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> update_tag_group_with_http_info(id, tag_group_update_query)

```ruby
begin
  # Update Tag Group
  data, status_code, headers = api_instance.update_tag_group_with_http_info(id, tag_group_update_query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling TagsApi->update_tag_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **tag_group_update_query** | [**TagGroupUpdateQuery**](TagGroupUpdateQuery.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

