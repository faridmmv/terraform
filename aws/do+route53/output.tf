#output "git_url" {
#    value = resource.gitlab_project.terraform-01.ssh_url_to_repo
#  
#}


output "droplet_public_ip" {
    value = resource.digitalocean_droplet.web.ipv4_address
}

