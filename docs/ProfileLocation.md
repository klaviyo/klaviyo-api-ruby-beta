# KlaviyoBetaAPI::ProfileLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address1** | **String** |  | [optional] |
| **address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **latitude** | [**ProfileLocationLatitude**](ProfileLocationLatitude.md) |  | [optional] |
| **longitude** | [**ProfileLocationLatitude**](ProfileLocationLatitude.md) |  | [optional] |
| **region** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **timezone** | **String** |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::ProfileLocation.new(
  address1: null,
  address2: null,
  city: null,
  country: null,
  latitude: null,
  longitude: null,
  region: null,
  zip: null,
  timezone: null
)
```

