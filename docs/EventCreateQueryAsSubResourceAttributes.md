# KlaviyoBetaAPI::EventCreateQueryAsSubResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile** | **Object** |  |  |
| **metric** | [**MetricCreateQuery**](MetricCreateQuery.md) |  |  |
| **properties** | **Object** |  |  |
| **time** | **Time** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **unique_id** | **String** |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::EventCreateQueryAsSubResourceAttributes.new(
  profile: null,
  metric: null,
  properties: null,
  time: null,
  value: null,
  unique_id: null
)
```

