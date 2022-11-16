# KlaviyoBetaAPI::CampaignCreateQueryAsSubResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **channel** | **String** |  |  |
| **audiences** | [**AudiencesSubObject**](AudiencesSubObject.md) |  |  |
| **send_strategy** | [**SendStrategySubObject**](SendStrategySubObject.md) |  | [optional] |
| **send_options** | [**SendOptionsSubObject**](SendOptionsSubObject.md) |  |  |
| **tracking_options** | [**TrackingOptionsSubObject**](TrackingOptionsSubObject.md) |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::CampaignCreateQueryAsSubResourceAttributes.new(
  name: null,
  channel: null,
  audiences: null,
  send_strategy: null,
  send_options: null,
  tracking_options: null
)
```

