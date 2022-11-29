resource "aws_vpc" "node-dev-vpc" {
    cidr_block = "172.17.17.0/24"
    tags = {
      "name" = "node-dev-vpc"
    }
}