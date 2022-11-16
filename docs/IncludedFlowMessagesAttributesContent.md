# KlaviyoBetaAPI::IncludedFlowMessagesAttributesContent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'klaviyo-api-beta-sdk'

KlaviyoBetaAPI::IncludedFlowMessagesAttributesContent.openapi_one_of
# =>
# [
#   :'EmailMessageContent',
#   :'SMSMessageContent'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'klaviyo-api-beta-sdk'

KlaviyoBetaAPI::IncludedFlowMessagesAttributesContent.build(data)
# => #<EmailMessageContent:0x00007fdd4aab02a0>

KlaviyoBetaAPI::IncludedFlowMessagesAttributesContent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EmailMessageContent`
- `SMSMessageContent`
- `nil` (if no type matches)

