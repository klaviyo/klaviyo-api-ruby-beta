# KlaviyoBetaAPI::EmailTrackingOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_utm** | **Boolean** |  |  |
| **utm_params** | [**Array&lt;UtmParamInfo&gt;**](UtmParamInfo.md) |  |  |
| **is_tracking_opens** | **Boolean** |  |  |
| **is_tracking_clicks** | **Boolean** |  |  |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::EmailTrackingOptions.new(
  add_utm: null,
  utm_params: null,
  is_tracking_opens: null,
  is_tracking_clicks: null
)
```

