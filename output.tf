output "azurerm_notification_hub_namespace_id" {
  value = azurerm_notification_hub_namespace.notification_hub_namespace.id
  description = "The ID of the Notification Hub Namespace"
}

output "azurerm_notification_hub_namespace_servicebus_endpoint" {
  value = azurerm_notification_hub_namespace.notification_hub_namespace.servicebus_endpoint
  description = "The ServiceBus Endpoint for this Notification Hub Namespace."
}

output "azurerm_notification_hub_id" {
  value = azurerm_notification_hub.notification_hub.id
  description = "The ID of the Notification Hub."
}
