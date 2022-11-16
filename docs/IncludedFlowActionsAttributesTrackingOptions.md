# KlaviyoBetaAPI::IncludedFlowActionsAttributesTrackingOptions

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'klaviyo-api-beta-sdk'

KlaviyoBetaAPI::IncludedFlowActionsAttributesTrackingOptions.openapi_one_of
# =>
# [
#   :'EmailTrackingOptions',
#   :'SMSTrackingOptions'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'klaviyo-api-beta-sdk'

KlaviyoBetaAPI::IncludedFlowActionsAttributesTrackingOptions.build(data)
# => #<EmailTrackingOptions:0x00007fdd4aab02a0>

KlaviyoBetaAPI::IncludedFlowActionsAttributesTrackingOptions.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EmailTrackingOptions`
- `SMSTrackingOptions`
- `nil` (if no type matches)

