variable "gh_token" {
  type      = string
  sensitive = true
}

variable "org_name" {
  type    = string
  default = "epam-tf"
}