resource "aws_vpc" "node-dev-vpc" {
    cidr_block = "172.17.17.0/24"
    enable_dns_support = true
    tags = {
      "name" = "node-dev-vpc"
    }
}
