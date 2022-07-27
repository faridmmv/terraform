locals {
  droplet_ip = digitalocean_droplet.web.ipv4_address
}

data "aws_route53_zone" "rebrain_domain" {
  name         = "devops.rebrain.srwx.net."
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.rebrain_domain.zone_id
  name    = "faridmmv"
  type    = "A"
  ttl     = "300"
  records = [local.droplet_ip]
}