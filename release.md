# Changelog

## [v1.0.0] - 2024-08-18

### Added
- Initial release of the Azure Notification Hub Terraform module.
- Added support for creating a Notification Hub Namespace.
- Implemented the ability to manage Notification Hubs within the namespace.
- Configured default and custom Notification Hub properties including:
  - APNs credentials
  - GCM credentials
- Support for setting up tags on both Notification Hub Namespace and Notification Hubs.
- Enabled diagnostics settings and logging for the Notification Hub Namespace.
- Included outputs for the Notification Hub Namespace ID, Notification Hub ID, and Notification Hub Servicebus endpoint.

### Documentation
- Added `README.md` detailing module usage, inputs, outputs, and examples.
- Provided an example directory with a sample implementation of the module.

### Testing
- Included basic Pester test scripts to validate the module configuration.
