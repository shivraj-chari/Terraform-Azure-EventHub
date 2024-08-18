module "notification" {
  source                = "git::https://github.com/shivraj-chari/terraform-az-eventhub.git?ref=master"
  namespace_name        = var.namespace_name
  notification_hub_name = var.notification_hub_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  namespace_type        = var.namespace_type
  sku_name              = var.sku_name
  enabled               = var.enabled
  apns_credential       = var.apns_credential
  gcm_credential        = var.gcm_credential
  tags                  = var.tags
}
