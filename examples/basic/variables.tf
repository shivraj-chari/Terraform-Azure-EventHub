variable "namespace_name" {
  type        = string
  description = "The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created."
}

variable "notification_hub_name" {
  type        = string
  description = "The name to use for this Notification Hub. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created."
}

variable "namespace_type" {
  type        = string
  description = "The Type of Namespace - possible values are Messaging or NotificationHub"
  validation {
    condition     = contains(["Messaging", "NotificationHub"], var.namespace_type)
    error_message = "Valid values for namespace_type: Messaging or NotificationHub"
  }
}

variable "sku_name" {
  type        = string
  description = "The name of the SKU to use for this Notification Hub Namespace. Possible values are Free, Basic or Standard."
  validation {
    condition     = contains(["Free", "Basic", "Standard"], var.sku_name)
    error_message = "Valid values for sku_name: Free, Basic or Standard"
  }
}

variable "enabled" {
  type        = bool
  description = "Is this Notification Hub Namespace enabled?"
  default     = true
}

variable "apns_credential" {
  type        = map(any)
  description = "map containing apns credential details"
}

variable "gcm_credential" {
  type        = map(any)
  description = "(optional) describe your variable"
}

variable "tags" {
  type        = map(any)
  description = "A mapping of tags which should be assigned to the Resource"
}
