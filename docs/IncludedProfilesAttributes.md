# KlaviyoBetaAPI::IncludedProfilesAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **external_id** | **String** |  | [optional] |
| **anonymous_id** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **organization** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **image** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |
| **last_event_date** | **Time** |  | [optional] |
| **location** | [**ProfileLocation**](ProfileLocation.md) |  | [optional] |
| **properties** | **Object** |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::IncludedProfilesAttributes.new(
  email: null,
  phone_number: null,
  external_id: null,
  anonymous_id: null,
  first_name: null,
  last_name: null,
  organization: null,
  title: null,
  image: null,
  created: null,
  updated: null,
  last_event_date: null,
  location: null,
  properties: null
)
```

