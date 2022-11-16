# KlaviyoBetaAPI::TrackingOptionsSubObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_tracking_opens** | **Boolean** |  | [optional] |
| **is_tracking_clicks** | **Boolean** |  | [optional] |
| **is_add_utm** | **Boolean** |  | [optional] |
| **utm_params** | [**Array&lt;UTMParamsSubObject&gt;**](UTMParamsSubObject.md) |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::TrackingOptionsSubObject.new(
  is_tracking_opens: null,
  is_tracking_clicks: null,
  is_add_utm: null,
  utm_params: null
)
```

