terraform {
  required_providers {
    github = {
      source  = "registry.terraform.io/hashicorp/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = "epam-tf"
  token = var.gh_token
}