resource "aws_subnet" "main-dev-subnet" {
    vpc_id = aws_vpc.node-dev-vpc.id
    cidr_block = "172.17.17.17/32"

    tags = {
      "name" = "main-dev-subnet"
    }
}