---

page_title: "cloud_network Resource - terraform-provider-ims-cloud"
subcategory: ""
description: |-
  The `cloud_network` resource allows you to manage networks in the IMS Cloud platform.

---

# cloud_network (Resource)

The `cloud_network` resource allows you to manage networks in the IMS Cloud platform.

## Example Usage

```hcl
resource "cloud_network" "example" {
  name          = "example-network"
  datacenter_id = data.cloud_datacenter.example.id
  subnet {
    ip          = "192.168.1.0"
    bit         = 24
    gateway     = "192.168.1.1"
    dns1        = "8.8.8.8"
    dns2        = "8.8.4.4"
    description = "example-subnet"
  }
}
```

## Schema

### Required

- **datacenter_id** (String) - ID attribute of the datacenter data source.
- **name** (String) - The network name.

### Optional

- **id** (String) - The ID of this resource.
- **subnet** (Block List, Max: 500) - IP Subnets to create and attach to this network. (see [below for nested schema](#nestedblock--subnet))

### Read-Only

- **full_name** (String) - The full network name - used internally to uniquely identify the network. This value should be used when attaching a network to a server.
- **network_id** (Number) - The unique network ID.

<a id="nestedblock--subnet"></a>
### Nested Schema for `subnet`

#### Required

- **bit** (Number) - The subnet bit is used with the subnet IP to determine the IP range for this subnet.
- **ip** (String) - The subnet IP is used with the subnet bit to determine the IP range for this subnet.

#### Optional

- **description** (String) - Optional description of this subnet.
- **dns1** (String) - Optional primary DNS server IP for this subnet.
- **dns2** (String) - Optional secondary DNS server IP for this subnet.
- **gateway** (String) - Optional gateway IP from within the subnet IP range.

#### Read-Only

- **id** (Number) - The unique subnet ID.