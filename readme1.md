# Azure Notification Hub Terraform Module

This Terraform module provisions an Azure Notification Hub and its associated Notification Namespace in Azure.

## Usage

```
module "notification_hub" {
  source = "github.com/your-repo/your-module-path"

  resource_group_name      = "example-resources"
  location                 = "East US"
  namespace_name           = "example-namespace"
  notification_hub_name    = "example-hub"
  notification_hub_sku     = "Standard"
  apns_credential          = {
    certificate   = "path/to/certificate.p12"
    certificate_password = "your_password"
  }
  gcm_credential           = {
    api_key = "your_gcm_api_key"
  }
  tags                     = {
    Environment = "Production"
    Project     = "ExampleProject"
  }
}
```

## Requirements
- Terraform >= 1.0.0
- Azure Provider >= 3.0

## Providers
|Name   |Version|
|-------|-------|
|azurerm|>= 3.0 |


## Inputs

|Name|Description|	Type|	Default|	Required|
|------|-----------|-----|------|------|
|resource_group_name	The name of the resource group where the resources will be created.	string	n/a	yes
|location	The Azure location where the resources will be created.	string	"East US"	no
|namespace_name	The name of the Notification Namespace.	string	n/a	yes
|notification_hub_name	The name of the Notification Hub.	string	n/a	yes
notification_hub_sku	The SKU of the Notification Hub (e.g., Free, Basic, Standard).	string	"Free"	no
apns_credential	APNs (Apple Push Notification Service) credentials.	map(string)	{}	no
gcm_credential	GCM (Google Cloud Messaging) credentials.	map(string)	{}	no
tags	A mapping of tags to assign to the resources.	map(string)	{}	no
Outputs
Name	Description
namespace_id	The ID of the created Notification Namespace.
notification_hub_id	The ID of the created Notification Hub.
namespace_name	The name of the Notification Namespace.
notification_hub_name	The name of the Notification Hub.


Example
hcl
Copy code
module "notification_hub" {
  source = "github.com/your-repo/your-module-path"

  resource_group_name      = "example-resources"
  location                 = "East US"
  namespace_name           = "example-namespace"
  notification_hub_name    = "example-hub"
  notification_hub_sku     = "Standard"
  
  apns_credential = {
    certificate          = "path/to/certificate.p12"
    certificate_password = "your_password"
  }
  
  gcm_credential = {
    api_key = "your_gcm_api_key"
  }

  tags = {
    Environment = "Production"
    Project     = "ExampleProject"
  }
}
## Contributing
If you want to contribute to this module, please submit a pull request or open an issue.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

### Sections Overview

- **Usage**: Demonstrates how to use the module with an example.
- **Requirements**: Specifies the required versions of Terraform and the Azure provider.
- **Providers**: Lists the Terraform providers used.
- **Inputs**: Details the module's input variables, including descriptions, types, defaults, and whether they are required.
- **Outputs**: Specifies the outputs from the module.
- **Example**: Provides a complete example configuration for the module.
- **Contributing**: Provides instructions for contributing to the module.
- **License**: Outlines the licensing for the module.