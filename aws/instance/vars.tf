variable "AWS_REGION" {
  default = "us-east-1"
}


variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-01f18be4e32df20e2"
  }
}

variable "PUBLIC_KEY" {
  type = string
}
