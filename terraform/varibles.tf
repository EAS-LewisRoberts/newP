variable "vsphere_virtual_machine_template" {
  default = "vm-template"
}

vsphere_user = "lewis@easlab.co.uk"
vsphere_password = "Renegade187!"

domain = "easlab.co.uk"
hostname = "lewis"

vsphere_vcenter= "vcenter.easlab.co.uk"
vsphere_datastore = "VM_STORAGE"
vsphere_datacenter = "Development"
vsphere_network = "VM Network"
vsphere_compute_cluster = "EAS-DEV" 