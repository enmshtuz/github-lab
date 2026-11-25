resource "github_actions_organization_secret" "username" {
  secret_name = "username"
  visibility  = "selected"
  value       = var.username
}

resource "github_actions_organization_secret" "password" {
  secret_name = "password"
  visibility  = "selected"
  value       = var.password
}