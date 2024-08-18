resource "azurerm_notification_hub_namespace" "notification_hub_namespace" {
  name                = var.namespace_name
  resource_group_name = var.resource_group_name
  location            = var.location
  namespace_type      = var.namespace_type
  sku_name            = var.sku_name
  enabled             = var.enabled
  tags                = var.tags
} 

resource "azurerm_notification_hub" "notification_hub" {
  name                = var.notification_hub_name
  namespace_name      = azurerm_notification_hub_namespace.notification_hub_namespace.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
  dynamic "apns_credential" {
    for_each = length(var.apns_credential) > 0 ? [1] : []
    content {
      application_mode = var.apns_credential.application_mode
      bundle_id        = var.apns_credential.bundle_id
      key_id           = var.apns_credential.key_id
      team_id          = var.apns_credential.team_id
      token            = var.apns_credential.token
    }
  }
  dynamic "gcm_credential" {
    for_each = length(var.gcm_credential) > 0 ? [1] : []
    content {
      api_key = var.gcm_credential.api_key
    }
  }
}
