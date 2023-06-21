provider "aws" {
  region = "us-east-1"
}


/*
terraform {
  backend "s3" {}
}

*/
# Define your provider (e.g., AWS)

# Define the EC2 instances using the module
module "ec2_instances" {
  source = "./modules/ec2"
  region = var.region
  lane_number        = var.lane_number
  label_order        = var.label_order
  lane_envs          = var.lane_envs
  aem_instance_types = var.aem_instance_types
   # Pass the security group ID created by the Security Group module
 
}

