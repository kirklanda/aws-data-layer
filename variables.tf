variable "lab_environment_name" {
  description = "A unique name for the lab environment that will distinguish it from other labs"
  type = string
}

variable "region" {
  description = "The AWS region to use for the lab"
  default = "ap-southeast-2"
  type = string
}

variable "vpc_id" {
  description = "The ID of the VPC that services will be provisioned into"
  type = string
}

variable "db_user" {
  description = "RDS root user"
  sensitive = true
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
}