# Create EC2 instances using the provided variables
resource "aws_instance" "ec2_instances" {
  count = length(var.lane_envs) * length(var.aem_instance_types)
  ami = var.ami
  instance_type = var.instance_type
  # Use variables to configure instance properties (e.g., instance type, tags)
  #aem_instance_type = var.aem_instance_types[count.index % length(var.aem_instance_types)]

  tags = {
    "Name" = "web-instance-${var.lane_envs[count.index % length(var.lane_envs)]}${var.lane_number}-${var.aem_instance_types[count.index % length(var.aem_instance_types)]}"
    #"Name" = "instance-${var.lane_number}-${var.lane_envs[count.index % length(var.lane_envs)]}-${var.aem_instance_types[count.index % length(var.aem_instance_types)]}"
  }

  # Other EC2 resource configurations...
   # Attach the security group to the EC2 instances

}

