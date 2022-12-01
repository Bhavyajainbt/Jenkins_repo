resource "aws_subnet" "main-dev-subnet" {
    vpc_id = aws_vpc.node-dev-vpc.id
    cidr_block = "172.10.0.44/24"

    tags = {
      "name" = "main-dev-subnet"
    }
}