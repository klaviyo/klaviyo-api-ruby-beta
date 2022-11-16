# KlaviyoBetaAPI::ProfileCreateQueryAsSubResourceAttributes

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
| **location** | [**ProfileLocation**](ProfileLocation.md) |  | [optional] |
| **properties** | **Object** |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::ProfileCreateQueryAsSubResourceAttributes.new(
  email: null,
  phone_number: null,
  external_id: null,
  anonymous_id: null,
  first_name: null,
  last_name: null,
  organization: null,
  title: null,
  image: null,
  location: null,
  properties: null
)
```

