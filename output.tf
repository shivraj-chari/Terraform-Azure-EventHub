output "azurerm_notification_hub_namespace_id" {
  value = azurerm_notification_hub_namespace.notification_hub_namespace.id
}

output "azurerm_notification_hub_namespace_servicebus_endpoint" {
  value = azurerm_notification_hub_namespace.notification_hub_namespace.servicebus_endpoint
}

output "azurerm_notification_hub_id" {
  value = azurerm_notification_hub.notification_hub.id
}
