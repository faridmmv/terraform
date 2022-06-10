resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  count = 2
  instance_type = "t2.micro"
  tags = {
    "task_name" = "lnx1-12"
    "user_email" = "faridmmv_at_gmail.com"
  }
}


