# cicdlr# CICDP

To create a full CI/CD using Terraform. Use Ansible to automate the the installation of:

To create a full CI/CD using Terraform, by provisioning 4 VM's. Use Ansible to automate the the installation of:

- sonarqube
- sonarscanner
- jenkins
- triviy
- nexusrm 
- jenkins 

This will allow the full intergtaion of the proejct. 

Requirements:

Within this task you would need to apply providers such as <> for the task to run and everything to function.

The Terraform Provider for VMware vSphere is a plugin for Terraform that allows you to interact with VMware vSphere, notably vCenter Server, vmware-vcenter and vmware-esxi. 

This provider can be used to manage a VMware vSphere environment, including virtual machines, host and cluster management, inventory, networking, storage, datastores, content libraries, and more.

- [terraform-install]

For general information about Terraform, visit terraform-install and the projectterraform-github on GitHub.

- [golang-install]

Required if building the provider.

- [vmware-vsphere-documenation]

The provider supports VMware vSphere versions in accordance with the VMware Product Lifecycle Matrix from General Availability to End of General Support.

To create a full CI/CD using Terraform. Use Ansible to automate the the installation of:

- sonarqube
- sonarscanner
- jenkins
- triviy
- nexusrm 
- jenkins 

This will allow the full intergtaion of the proejct. 

Requirements:

Within this task you would need to apply providers such as <> for the task to run and everything to function.

The Terraform Provider for VMware vSphere is a plugin for Terraform that allows you to interact with VMware vSphere, notably vCenter Server, vmware-vcenter and vmware-esxi. 

This provider can be used to manage a VMware vSphere environment, including virtual machines, host and cluster management, inventory, networking, storage, datastores, content libraries, and more.

- [terraform-install]

For general information about Terraform, visit terraform-install and the projectterraform-github on GitHub.

- [golang-install]

Required if building the provider.

- [vmware-vsphere-documenation]

The provider supports VMware vSphere versions in accordance with the VMware Product Lifecycle Matrix from General Availability to End of General Support.


This repo is the provisioning of 4 VM's and the capturing of each of the VM's IP address 

- To use git clone the repo, then run by using the following command:

Terraform apply

- upon input of this command, the script should run without any issues. 
- it should then provision 4 VM's and capture their IP addresses.
- nexusrm and 
- jenkins 

This will allow the full funtion of the project. 

Data will be queried at the initial config stage within the main.tf. The VM’s IP will be captured and will have output to my local machine in an inventory file. Then you can apply the configuration and inspect the output values.

Use "terraform apply"

- upon input of this command, the script should run without any issues. 
- it should then provision 4 VM's and capture their IP addresses.

Terraform apply

- it should then provision 4 VM's and capture their IP addresses.