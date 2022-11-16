# KlaviyoBetaAPI::CatalogVariantCreateQueryAsSubResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  |  |
| **catalog_type** | **String** |  | [optional] |
| **integration_type** | **String** | The integration type. Currently, this can only be set to $custom (and defaults to $custom if not included in the payload). | [optional] |
| **title** | **String** |  |  |
| **description** | **String** |  |  |
| **sku** | **String** |  |  |
| **inventory_policy** | **Integer** | A field that controls product visibility in product feeds/blocks. This field has two options:     DENY (1): a product will not appear in dynamic product recommendation feeds and blocks if it is out of stock.     CONTINUE (2): a product can appear in dynamic product recommendation feeds and blocks regardless of inventory quantity.     UNKNOWN (0): the behavior will be the same as if it were set to 2 [Default] |  |
| **inventory_quantity** | **Float** |  |  |
| **price** | **Float** |  |  |
| **url** | **String** |  |  |
| **image_full_url** | **String** |  | [optional] |
| **image_thumbnail_url** | **String** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **custom_metadata** | **Object** |  | [optional] |
| **published** | **Boolean** |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::CatalogVariantCreateQueryAsSubResourceAttributes.new(
  external_id: null,
  catalog_type: null,
  integration_type: null,
  title: null,
  description: null,
  sku: null,
  inventory_policy: null,
  inventory_quantity: null,
  price: null,
  url: null,
  image_full_url: null,
  image_thumbnail_url: null,
  images: null,
  custom_metadata: null,
  published: null
)
```

