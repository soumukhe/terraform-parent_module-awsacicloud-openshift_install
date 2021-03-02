
#  vars.tf,  this is the variable definition file in the main module.  Child Module should have this same file. 
# child module location:  .terraform/modules/openshift_install   under this directory

variable "instance_type" {
  default = "t2.micro"
}

variable "region" {
  default = "us-east-1"
}


variable "instancename" {
  type = string
  default = "OpenshiftInstallUbuntu"
}


variable "vpcname" {
   type = string
   default = "openshiftInstall-vpc"
}

variable "cidr" {
   type = string
   default = "10.0.0.0/16"
}

variable "subnet" {
   type = string
   default = "10.0.1.0/16"
}

variable "subnetname" {
  type = string
  default = "OpenshiftInstall-subnet"
}

variable "securitygroupname" {
  type = string
  default = "openshiftInstall-subnet-name"
}

variable "owners" {
  type  = list
  default = ["none"]
}

variable "igw_name" {
   type = string
   default = "ipenshiftInstall-IGW0"
}

variable "num_inst" {
  type    = number
  default = 4     #    Enter the number of ec2 instances you want spun up
}

variable "values" {
  type  = list
  default = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
}
