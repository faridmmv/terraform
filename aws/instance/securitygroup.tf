resource "aws_security_group" "sg_ssh" {
  name        = "allow ssh"
  vpc_id      = aws_vpc.main.id
  description = "Allow ssh connection"
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    #    cidr_blocks = aws_subnet.sub1.cidr_block
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}