# Specifying the provider
provider "vsphere" {
  user           = "lewis@easlab.co.uk"
  password       = "Renegade187!"
  vsphere_server = "vcenter.easlab.co.uk"

  # Customizing to my spec
  allow_unverified_ssl = true
}

# The required Data sources to fetch vSphere information
data "vsphere_datacenter" "datacenter" {
  name = "Development"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "EAS-DEV"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_datastore" "datastore" {
  name          = "VM_STORAGE"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = "VM Network"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_resource_pool" "pool" {
  name          = "EAS-DEV"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "template" {
  name = var.vsphere_virtual_machine_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

locals {
  machines = ["JenkinsLR", "SonarqubeLR", "NexusLR", "TrivvyLR"]
}

# Defining the CentOS virtual machine resource
resource "vsphere_virtual_machine" "vm" {
  count            = length(local.machines)
  name             = local.machines[count.index]
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096

  # Customize the options below
  guest_id  = "centos8_64Guest"
  scsi_type = "pvscsi"
  firmware  = "efi"

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label            = "disk0"
    size             = 50 # GB
    thin_provisioned = true
  }

  cdrom {
    datastore_id = data.vsphere_datastore.datastore.id
    path         = "iso/CentOS-8-x86_64-Minimal-2003.iso"
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }
}

  # Generate inventory file
resource "local_file" "inventory" {
  filename = "Users/lewisroberts/Pipeline /terraform/inventory.ini"
  content = <<EOF
  [JenkinsLR]
  ${vsphere_virtual_machine.vm[0].guest_ip_addresses[0]} 
  [SonarqubeLR]
  ${vsphere_virtual_machine.vm[1].guest_ip_addresses[0]}
  [NexusLR]
  ${vsphere_virtual_machine.vm[2].guest_ip_addresses[0]}
  [TrivvyLR]
  ${vsphere_virtual_machine.vm[3].guest_ip_addresses[0]}
  EOF
}