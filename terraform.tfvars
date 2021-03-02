# terraform.tfvars   Please define the values of the variables.  The variabiles were defined in vars.tf with default values

region     = "us-west-1"  # aws region where you will configure all this
num_inst   = 9  # number of ec2s
instancename = "OpenshiftInstallUbuntu" # instance name will have index numbers attached to end if more than one ec2
instance_type = "t2.micro"  #  the instance type, such as t2.micro
vpcname = "openshiftInstall-vpc"  # vpc name
cidr = "10.0.0.0/16"   # vpc cidr
subnet = "10.0.1.0/16"  # vpc subnet
subnetname = "OpenshiftInstall-subnet"  # name of subnet
securitygroupname =  "openshiftInstall-subnet-name"  #  name of securitygroup
igw_name = "ipenshiftInstall-IGW0"  # name of IGW
owners = ["099720109477"] # this is the owner for the image (not AWS account number.  use aws ec2 describe-images   --image-ids xxx --region yyy to get this (aws cli command aws-configure must be setup first)
values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]  # use aws ec2 describe-images   --image-ids xxx --region yyy to get this (aws cli command aws-configure must be setup first)
