# Terraform Provider for IMS - Cloud

## Installation

* [Install terraform](https://www.terraform.io/docs/index.html) (version 1.0 or higher)

### Example Usage

This is an example end to end usage of common functionality, see sections below 
for additional functionality examples.

Set environment variables

```
export CLOUD_API_CLIENT_ID=
export CLOUD_API_SECRET=
```

Create a `main.tf` file:

```terraform
terraform {
  required_providers {
    ims_cloud = {
      source = "ims-network/ims-cloud"
    }
  }
}

provider "ims_cloud" {
}

``` 
