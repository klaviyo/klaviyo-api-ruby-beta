# KlaviyoBetaAPI::CatalogItemCreateQueryAsSubResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |
| **integration_type** | **String** | The integration type. Currently, this can only be set to $custom (and defaults to $custom if not included in the payload). | [optional] |
| **title** | **String** |  |  |
| **catalog_type** | **String** |  | [optional] |
| **description** | **String** |  |  |
| **url** | **String** |  |  |
| **image_full_url** | **String** |  | [optional] |
| **image_thumbnail_url** | **String** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **custom_metadata** | **Object** |  | [optional] |
| **published** | **Boolean** |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::CatalogItemCreateQueryAsSubResourceAttributes.new(
  external_id: null,
  integration_type: null,
  title: null,
  catalog_type: null,
  description: null,
  url: null,
  image_full_url: null,
  image_thumbnail_url: null,
  images: null,
  custom_metadata: null,
  published: null
)
```

