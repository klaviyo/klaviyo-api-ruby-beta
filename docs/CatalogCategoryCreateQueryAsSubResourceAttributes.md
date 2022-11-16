# KlaviyoBetaAPI::CatalogCategoryCreateQueryAsSubResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |
| **name** | **String** |  |  |
| **integration_type** | **String** | The integration type. Currently, this can only be set to $custom (and defaults to $custom if not included in the payload). | [optional] |
| **catalog_type** | **String** |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::CatalogCategoryCreateQueryAsSubResourceAttributes.new(
  external_id: null,
  name: null,
  integration_type: null,
  catalog_type: null
)
```

