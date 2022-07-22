data "digitalocean_ssh_key" "rebrain" {
  name = "REBRAIN.SSH.PUB.KEY"
}

resource "digitalocean_ssh_key" "mypc" {
  name       = "mypckey"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "digitalocean_tag" "devops" {
  name = "devops"
}

resource "digitalocean_tag" "email" {
  name = "faridmmv_at_gmail_com"
}

resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.rebrain.id, digitalocean_ssh_key.mypc.id]
  tags = [digitalocean_tag.devops.id, digitalocean_tag.email.id]
}