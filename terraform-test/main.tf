terraform {
  required_providers {
    cloud = {
      source  = "ims-network/cloud"
      version = "0.1.0"
    }
  }
}

provider "cloud" {
  api_client_id = "9a2da94268e0dabea2ca2e2bb434c3f7"
  api_secret    = "b2cbaaec481287b8c0e1728f1b6194b0"
  api_url       = "https://cloudcli.cloudwm.com"
}


resource "cloud_server" "example" {
  name       = "example-server"
  image_id   = "example-image-id"
  datacenter = "example-datacenter-id"
}

resource "cloud_network" "example" {
  name = "example-network"
}

data "cloud_datacenter" "example" {
  name = "example-datacenter"
}

data "cloud_image" "example" {
  name = "example-image"
}
