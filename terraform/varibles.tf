variable "vsphere_virtual_machine_template" {
  default = "vm-template"
}

variable "vsphere_user" {
  default = "lewis@easlab.co.uk"
}

variable "vsphere_password" {
  default = "Renegade187!"
} 
  
variable "domain" {
  default = "easlab.co.uk"
}  

variable "hostname" {
  default = "lewis"
}   

variable "vsphere_vcenter" {
  default = "vcenter.easlab.co.uk"
}   

variable "vsphere_datastore" {
  default = "VM_STORAGE"
}  

variable "vsphere_datacenter" {
  default = "Development"
} 

variable "vsphere_network" {
  default = "VM Network"
}   

variable "vsphere_compute_cluster" {
  default = "EAS-DEV"
}    