# KlaviyoBetaAPI::IncludedVariantsAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **inventory_policy** | **Integer** | A field that controls product visibility in product feeds/blocks. This field has two options:     DENY (1): a product will not appear in dynamic product recommendation feeds and blocks if it is out of stock.     CONTINUE (2): a product can appear in dynamic product recommendation feeds and blocks regardless of inventory quantity.     UNKNOWN (0): the behavior will be the same as if it were set to 2 [Default] | [optional] |
| **inventory_quantity** | **Float** |  | [optional] |
| **price** | **Float** |  | [optional] |
| **url** | **String** |  | [optional] |
| **image_full_url** | **String** |  | [optional] |
| **image_thumbnail_url** | **String** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **custom_metadata** | **Object** |  | [optional] |
| **published** | **Boolean** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **updated** | **Time** |  | [optional] |

## Example

```ruby
require 'klaviyo-api-beta-sdk'

instance = KlaviyoBetaAPI::IncludedVariantsAttributes.new(
  external_id: null,
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
  published: null,
  created: null,
  updated: null
)
```
