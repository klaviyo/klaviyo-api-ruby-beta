# KlaviyoBetaAPI::IncludedFlowActionsAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |
| **settings** | **Object** |  | [optional] |
| **tracking_options** | [**IncludedFlowActionsAttributesTrackingOptions**](IncludedFlowActionsAttributesTrackingOptions.md) |  | [optional] |
| **send_options** | [**SendOptions**](SendOptions.md) |  | [optional] |
| **render_options** | [**SMSRenderOptions**](SMSRenderOptions.md) |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::IncludedFlowActionsAttributes.new(
  action_type: null,
  status: null,
  created: null,
  updated: null,
  settings: null,
  tracking_options: null,
  send_options: null,
  render_options: null
)
```

