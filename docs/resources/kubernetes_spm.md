---
layout: ""
page_title: dynatrace_kubernetes_spm Resource - terraform-provider-dynatrace"
subcategory: "Application Security"
description: |-
  The resource `dynatrace_kubernetes_spm` covers configuration for Kubernetes security posture management
---

# dynatrace_kubernetes_spm (Resource)

-> This resource requires the API token scopes **Read settings** (`settings.read`) and **Write settings** (`settings.write`)

## Dynatrace Documentation

- Security Posture Management: Kubernetes - https://docs.dynatrace.com/docs/shortlink/kspm-start

- Settings API - https://www.dynatrace.com/support/help/dynatrace-api/environment-api/settings (schemaId: `builtin:kubernetes.security-posture-management`)

## Export Example Usage

- `terraform-provider-dynatrace -export dynatrace_kubernetes_spm` downloads all existing configuration for Kubernetes security posture management

The full documentation of the export feature is available [here](https://dt-url.net/h203qmc).

## Resource Example Usage

```terraform
resource "dynatrace_kubernetes_spm" "#name#" {
    scope = "KUBERNETES_CLUSTER-1234567890000000"
    configuration_dataset_pipeline_enabled = true
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration_dataset_pipeline_enabled` (Boolean) Follow the [installation instructions](https://dt-url.net/4x23ut5) to deploy the Security Posture Management components.

### Optional

- `scope` (String) The scope of this setting (KUBERNETES_CLUSTER). Omit this property if you want to cover the whole environment.

### Read-Only

- `id` (String) The ID of this resource.
 