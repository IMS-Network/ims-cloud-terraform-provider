terraform {
  required_providers {
    cloud = {
      source  = "ims-network/cloud"
      version = "0.1.0"
    }
  }
}

provider "cloud" {
  api_client_id = ""
  api_secret    = ""
  api_url       = "https://platform.cloud.ims-network.net/service"
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
