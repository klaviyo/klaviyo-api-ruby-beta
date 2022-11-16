# KlaviyoBetaAPI::SendStrategySubObjectOptions

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'klaviyo-api-beta-sdk'

KlaviyoBetaAPI::SendStrategySubObjectOptions.openapi_one_of
# =>
# [
#   :'StaticScheduleOptions',
#   :'ThrottledScheduleOptions'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'klaviyo-api-beta-sdk'

KlaviyoBetaAPI::SendStrategySubObjectOptions.build(data)
# => #<StaticScheduleOptions:0x00007fdd4aab02a0>

KlaviyoBetaAPI::SendStrategySubObjectOptions.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `StaticScheduleOptions`
- `ThrottledScheduleOptions`
- `nil` (if no type matches)

