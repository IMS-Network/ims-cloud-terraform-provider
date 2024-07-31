---
layout: ""
page_title: "Provider: IMS Cloud"
description: |-
  The IMS Cloud provider is used to interact with the resources provided by IMS - Network.
---

# IMS Cloud Provider

The IMS Cloud provider is used to interact with the resources provided by [IMS Cloud](https://cloud.ims-network.net).

To create a server resource, it's recommended to use our [server configuration interface](https://config.cloud.ims-network.net) which provides ready-to-use Terraform templates with valid configuration options and identifiers according to your selection.

## Usage Guide

Usage guide and examples are available [here](https://github.com/ims-network/terraform-provider-ims-cloud/).

## Example Usage

```hcl
provider "cloud" {
  api_client_id = var.api_client_id
  api_secret    = var.api_secret
  api_url       = "https://platform.cloud.ims-network.net"  # Optional
}
```

## Schema

### Required

- **api_client_id** (String) - Cloud API Client ID
- **api_secret** (String, Sensitive) - Cloud API Secret

### Optional

- **api_url** (String) - IMS Cloud API URL. Defaults to `https://platform.cloud.ims-network.net`.