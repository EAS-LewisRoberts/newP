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

Ansible playbook:

There will be 4 main parts that will make up this ansible playbook, with corresponding subsectors for each of the installation of the 4 vm's.

- Jenkins 
- Sonarqube 
- Nexus rm 
- Trivvy 

Jenkins:

This is an ansible playbook to install and configure Jenkins. The first stages of this playbook will install Java, Git and Jenkins. This playbook will install and apply the correct credentials and plugins that are incoded within the script. You will then be able to run, open and use jenkins for its pipeline functions on the given virtual machine and the certain https port it uses.

Sonarqube:

This is an ansible playbook to install and configure sonarqube with the given credentials and plugins, this will be the stage after jenkins within the script of the playbook, which will install Sonarqube with the correct plugins and credentials that are applied within the script. You will then be able to run, open and use Sonarqube for its functions and uses on the designated virtual machine and the appointed https port it uses.

Trivy:

This is an ansible playbook that will install and configure trivy with the given credentials and plugins if required, this will be the stage after the installation of sonarqube within the playbook. You will then be able to spin up a vm with trivy already insatalled on it, on the designated virtual machine and the appointed port.

Nexus rm:

This is an ansible playbook that will install and configure Nexus with the given credentials and plugins if required, this will be the stage after the insatllation of Trivy within the playbook. which will install Nexus with the correct pugins and the credentials that are applied within the script, you will then be able to run, open and use tha virtual machine with Nexus for its functions and uses on the designated virtual machine and the appointed https port it uses.

Ansible Playbook:

This playbook should be able to work on any device from the ground up. Menaing that the terraform.tf will provision 4 vm's and grab the ip of those vm's. You will then be able to use your ansible script against the inventory file where the ip addresses of the vm's will be located. Upon running your ansible playbook with the correct roles and modules within it, you should then be able to install each of the softwares onto their designated vm's, and run on the given ports. Upon all 4 vm's installing their required softwares this will be the completion of the project/isatllation.

This is the completion of the 4 provisoning Virtual Machines.