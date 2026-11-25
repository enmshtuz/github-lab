variable "gh_token" {
  type      = string
  sensitive = true
}

variable "username" {
  type        = string
  sensitive   = true
  description = "Dummy API username"
}

variable "password" {
  type        = string
  sensitive   = true
  description = "Dummy API password"
}

variable "security_manager_username" {
  type    = string
  default = "enmshtuz"
}