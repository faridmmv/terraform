resource "aws_key_pair" "tfpair" {
  key_name   = "tf"
  public_key = var.PUBLIC_KEY
}
