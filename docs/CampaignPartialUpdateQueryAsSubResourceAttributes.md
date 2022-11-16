# KlaviyoBetaAPI::CampaignPartialUpdateQueryAsSubResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **audiences** | [**AudiencesSubObject**](AudiencesSubObject.md) |  | [optional] |
| **send_options** | [**SendOptionsSubObject**](SendOptionsSubObject.md) |  | [optional] |
| **tracking_options** | [**TrackingOptionsSubObject**](TrackingOptionsSubObject.md) |  | [optional] |
| **send_strategy** | [**SendStrategySubObject**](SendStrategySubObject.md) |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::CampaignPartialUpdateQueryAsSubResourceAttributes.new(
  name: null,
  audiences: null,
  send_options: null,
  tracking_options: null,
  send_strategy: null
)
```

