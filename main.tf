
terraform {
  required_version = "= 0.12.10"

  backend "remote" {}
}

data "aws_region" "current" {}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_range

  tags = {
    Name = "Demo VPC"
  }
}
