resource "aws_vpc" "vpc1" {
  cidr_block = "10.10.0.0/16"
}

resource "aws_subnet" "sub1" {
  cidr_block = "10.10.0.0/24"
  vpc_id = aws_vpc.vpc1.id
}