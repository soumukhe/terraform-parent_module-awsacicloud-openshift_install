# main.tf is in this parent module.  submoudules will be at: .terraform/modules/openshift_install (under this directory)

module "openshift_install" {
  source  = "soumukhe/openshift_install/awsacicloud"
  version = "1.0.0"

#  These variables are defined in main.tf of this parent module.  This variables are used in child module resources.tf which is the main script.  
#  The submoudle directory is .terraform/modules/openshift_install  under this directory
#  To change the values of the variables change them in terraformvars.tf in this main parent module (not in submodule)


region     = var.region   # defines the region variable
num_inst   = var.num_inst # defines the number of ec2s you want to spin up
instancename = var.instancename # defines the name of the ec2s,  for more than one, they will have a postfix with index numbers
vpcname = var.vpcname  # defines the Name tag of the vpc
instance_type =var.instancei_type  #  the instancetype such as t2.micro
cidr = var.cidr  # defines the cidr value of the vpc
subnet = var.subnet  # defines the subnet of the vpc, must be a subnet from the cidr
subnetname = var.subnetname   # defines the tag for the subnet name
securitygroupname =  var.securitygroupname  # defines the Tag Name for the securitygroup
igw_name = var.igw_name  #  defines the igw tag
owners   = var.owners  # defines the owner of the AMI ( this is not your AWS account number)
values  = var.values   #  this is the variable for the AMI to be used
}

