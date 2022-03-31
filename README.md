# aws-data-layer

Terraform scripts to create a PostgreSQL database within AWS RDS.

# Getting it running

Add a file to the project called terraform.tfvars and set the following variables:
- lab_environment_name = The name given to the environment being set up.
- vpc_id = the VPC ID that was created by the aws-network-layer project 
- db_user = a username for the database.
- db_password = a password for the database
