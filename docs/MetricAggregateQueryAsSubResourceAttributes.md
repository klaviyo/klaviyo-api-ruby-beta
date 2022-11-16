# KlaviyoBetaAPI::MetricAggregateQueryAsSubResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** |  |  |
| **measurements** | **Array&lt;String&gt;** |  |  |
| **interval** | **String** | Supported intervals for bucketing query results by time |  |
| **page_size** | **Integer** |  | [optional] |
| **by** | **Array&lt;String&gt;** |  | [optional] |
| **return_fields** | **Array&lt;String&gt;** |  | [optional] |
| **filter** | **Array&lt;String&gt;** |  |  |
| **timezone** | **String** |  |  |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::MetricAggregateQueryAsSubResourceAttributes.new(
  metric_id: null,
  measurements: null,
  interval: null,
  page_size: null,
  by: null,
  return_fields: null,
  filter: null,
  timezone: null
)
```

