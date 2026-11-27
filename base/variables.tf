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

variable "member1" {
  type    = string
  default = "danielazizyan"
}

variable "member2" {
  type    = string
  default = "enmshtuz"
}

variable "devops_team_membership" {
  type = list(string)
}

variable "security_team_membership" {
  type = list(string)
}

variable "team1" {
  type    = string
  default = "devops-team"
}

variable "team2" {
  type    = string
  default = "security-team"
}

variable "team3" {
  type    = string
  default = "nodejs-team"
}

variable "organization_secret_names" {
  type    = list(string)
  default = []
}