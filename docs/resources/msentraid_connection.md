---
layout: ""
page_title: dynatrace_msentraid_connection Resource - terraform-provider-dynatrace"
subcategory: "Connections"
description: |-
  The resource `dynatrace_msentraid_connection` covers configuration for Microsoft Entra ID connections
---

# dynatrace_msentraid_connection (Resource)

-> This resource requires the API token scopes **Read settings** (`settings.read`) and **Write settings** (`settings.write`)

## Dynatrace Documentation

- Azure Connector - https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/microsoft-entra-id

- Settings API - https://www.dynatrace.com/support/help/dynatrace-api/environment-api/settings (schemaId: `app:dynatrace.azure.connector:microsoft-entra-identity-developer-connection`)

## Export Example Usage

- `terraform-provider-dynatrace -export dynatrace_msentraid_connection` downloads all existing Microsoft Entra ID connections

The full documentation of the export feature is available [here](https://dt-url.net/h203qmc).

## Resource Example Usage

```terraform
resource "dynatrace_msentraid_connection" "#name#"{
  name    = "#name#"
  directory_id = "123e4567-e89b-12d3-a456-426614174000"
  application_id = "123e4567-e89b-12d3-a456-426614174000"
  client_secret = "#######"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `application_id` (String, Sensitive) Application (client) ID of your app registered in Microsoft Azure App registrations
- `client_secret` (String, Sensitive) Client secret of your app registered in Microsoft Azure App registrations
- `directory_id` (String, Sensitive) Directory (tenant) ID of Microsoft Entra Identity Developer
- `name` (String) The name of the Microsoft Entra Identity Developer connection

### Optional

- `description` (String) Description

### Read-Only

- `id` (String) The ID of this resource.
