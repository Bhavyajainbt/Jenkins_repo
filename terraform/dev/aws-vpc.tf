variable "vpc_cidr_block" {
  type = string
  default = "172.50.0.0/16"
}

variable "vpc-resource-name" {
  type = string
}

resource "aws_vpc" "node-dev-vpc" {
  #cidr_block = "172.17.17.0/24"
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  tags = {
    "name" = "node-dev-vpc"
  }
}
