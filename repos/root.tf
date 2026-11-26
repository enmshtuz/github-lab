terraform {
  required_providers {
    github = {
      source  = "registry.terraform.io/hashicorp/github"
      version = "~> 6.0"
    }
  }
  backend "pg" {
    conn_str = "postgres://tfstate:tf@localhost/repos?sslmode=disable"
  }
}

provider "github" {
  owner = "epam-tf"
  token = var.gh_token
}