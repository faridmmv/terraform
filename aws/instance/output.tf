#output "ip" {
#  value = aws_instance.example.public_ip
#}
output "ip" {
  value = formatlist("%v", aws_instance.example.*.public_ip)
}