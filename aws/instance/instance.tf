resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  count         = 2
  instance_type = "t2.micro"
  tags = {
    Name = "Test Instance"
    by   = "tf"
  }
  key_name               = aws_key_pair.tfpair.key_name
  subnet_id              = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.sg_ssh.id]
}



