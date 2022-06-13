resource "aws_security_group" "sg_ssh" {
  name = "allow ssh"
  vpc_id = aws_vpc.vpc1.id
  description = "Allow ssh connection"
  ingress {
    description = "Allow SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
#    cidr_blocks = aws_subnet.sub1.cidr_block
  }
}