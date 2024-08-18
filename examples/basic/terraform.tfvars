namespace_name        = "nhn-tf-001"
notification_hub_name = "nh-tf-001"
resource_group_name   = "rg-tf-001"
location              = "northeurope"
namespace_type        = "NotificationHub"
sku_name              = "Free"
enabled               = true
apns_credential = {
  application_mode = "Sandbox"
  bundle_id        = "com.hashicorp.example"
  key_id           = "938912831928391"
  team_id          = "928492348928343"
  token            = "AIzaSyCODKQUQiKtRHmbVO8N0TjKQNkRjSHrwerwSYAIzaSyCODKQUQiKtRHmbVO8N0TjKQNkRjSHZESY"
}

gcm_credential = {
  api_key = "AIzaSyCODKQUQiKtRHmbVO8N0TjKQNkRjSHrwerwSYAIzaSyCODKQUQiKtRHmbVO8N0TjKQNkRjSHZESY"
}
tags = {
  "environment" = "dev"
}
