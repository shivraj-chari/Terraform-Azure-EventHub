output "notification_hub_namespace_id" {
  value = module.notification.azurerm_notification_hub_namespace_id
}

output "notification_hub_namespace_servicebus_endpoint" {
  value = module.notification.azurerm_notification_hub_namespace_servicebus_endpoint
}

output "notification_hub_id" {
  value = module.notification.azurerm_notification_hub_id
}
