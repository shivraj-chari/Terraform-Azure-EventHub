# terraform-az-eventhub
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_notification_hub.notification_hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/notification_hub) | resource |
| [azurerm_notification_hub_namespace.notification_hub_namespace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/notification_hub_namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apns_credential"></a> [apns\_credential](#input\_apns\_credential) | map containing apns credential details | `map(any)` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Is this Notification Hub Namespace enabled? | `bool` | `true` | no |
| <a name="input_gcm_credential"></a> [gcm\_credential](#input\_gcm\_credential) | (optional) describe your variable | `map(any)` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_namespace_type"></a> [namespace\_type](#input\_namespace\_type) | The Type of Namespace - possible values are Messaging or NotificationHub | `string` | n/a | yes |
| <a name="input_notification_hub_name"></a> [notification\_hub\_name](#input\_notification\_hub\_name) | The name to use for this Notification Hub. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The name of the SKU to use for this Notification Hub Namespace. Possible values are Free, Basic or Standard. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags which should be assigned to the Resource | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_notification_hub_id"></a> [azurerm\_notification\_hub\_id](#output\_azurerm\_notification\_hub\_id) | The ID of the Notification Hub. |
| <a name="output_azurerm_notification_hub_namespace_id"></a> [azurerm\_notification\_hub\_namespace\_id](#output\_azurerm\_notification\_hub\_namespace\_id) | The ID of the Notification Hub Namespace |
| <a name="output_azurerm_notification_hub_namespace_servicebus_endpoint"></a> [azurerm\_notification\_hub\_namespace\_servicebus\_endpoint](#output\_azurerm\_notification\_hub\_namespace\_servicebus\_endpoint) | The ServiceBus Endpoint for this Notification Hub Namespace. |
<!-- END_TF_DOCS -->