data "aws_vpc" "this" {
  id = var.vpc_id
}

data "aws_subnets" "public" {
  filter {
    name = "vpc-id"
    values = [var.vpc_id]
  }

  # Retrieve only the public subnets with a tag of "Tier" set to "Public"
  tags = {
    Tier = "Public"
  }
}

data "aws_subnets" "private" {
  filter {
    name = "vpc-id"
    values = [var.vpc_id]
  }

  # Retrieve only the private subnets with a tag of "Tier" set to "Private"
  tags = {
    Tier = "Private"
  }
}