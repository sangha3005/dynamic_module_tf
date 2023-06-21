# Define variables used in main.tf
variable "region" {
  description = "AWS region"
  type        = string
}

variable "lane_number" {
  description = "Lane number"
  type        = string
}

variable "label_order" {
  description = "Label order"
  type        = list(string)
}

variable "lane_envs" {
  description = "Lane environments"
  type        = list(string)
}

variable "aem_instance_types" {
  description = "AEM instance types"
  type        = list(string)
}

