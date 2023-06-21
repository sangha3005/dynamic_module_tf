terraform plan -var-file="inputs.tfvars"

shell
Copy code
terraform apply -var-file="variables.tfvars"
This will apply the Terraform configuration and create the desired number of EC2 instances based on the provided variables.