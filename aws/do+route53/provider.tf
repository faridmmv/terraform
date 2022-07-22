terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "3.14.0"
    }

    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    aws = {
      source = "hashicorp/aws"
      version = "4.23.0"
    }
  
  }
}

provider "aws" {
  profile = "rebrain"
  region  = "us-east-1"
}

provider "gitlab" {
  token = var.gitlab_token
  base_url = "https://gitlab.rebrainme.com/api/v4/"
}


provider "digitalocean" {
  token = var.do_token
}