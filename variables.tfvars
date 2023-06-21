#Leave the following iam role variable as is 
#iam-role-name = "adobe-multilane-iam-role"

#Set the lane number to the current highest lane number + 1. Use lane 9 for testing


# Required tags - all of these must come from requesting applicaiton team
region             = "us-west-2"
lane_number        = "5"
label_order        = ["environment", "application", "name"]
lane_envs          = ["pdev"]
aem_instance_types = ["author", "publish"]
