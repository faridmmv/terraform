resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  count = 2
  instance_type = "t2.micro"
  tags = {
    "task_name" = "lnx1-12"
    "user_email" = "faridmmv_at_gmail.com"
  }
  key_name = "tf"
}

resource "aws_key_pair" "tfpair" {
  key_name = "tf"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9VTvrr/ctua/YFniTYqNSlXm7fyYhcPFJNOh6Hs3h5NtNYzJY2L9nGgT5ESp8sbn5WZNbvxz3g85BJooYQOdT2thj9c/sqNhEprpzcbcLQhyf+0dsuvdHHO8c0SIGRCn/zt0JEn9TjvzZ7RnJk30LJYbAPA6KsFwqJBTRjJFvAzyvDlv3EWUiWLSGko+L4AYpSJhNufAW30B7GfTmb18uT5UZv8MtxfE3xBMz3LvknOo2Ikp1tbO9R68C1Vi2A3QTNANr74VC3iuRRnYnZ9W6Z1wTeU7c17bSS0p6XzHQ/kOkjQ4YkRzmOzyDIOhv8dx4G3qxdqh8DdTKyT5qsnKrxc3kfbuCkVFYgmWHD/Wsb5z4h1HP2Qr+LUHSmEoNcJKC433RjBJNTIjJY7hWPjjo0H8+B2+EZZM2Yk8bKQp6PORxGC1XDdrLPjxKBD77q4Uw6Q1q3YVz82TKTqrVAELSWbgpKVUHICZehnT6qiT1LWppyRFYKwIdMvQaQs0NzRBXz4PaiTiSEOIVsNL+emZ+9LOC1evKDm4CHfvlJ0GbEh943XBfQ4tUMriKFGv23035RH54cBzH3fu/Jppeq0U5VpbAFagL4XvTJoZ50ytp5sbDPM6t7no+rYfIT7lmn+gxbdiY6pc9QhUdOB6zmGtDHJI5hpCgYzHDgoqs8QNnmw== faridmmv@mmvlp1"
}


