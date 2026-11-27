locals {
  organization_secrets = {
    username = var.username
    password = var.password
  }
}

resource "github_actions_organization_secret" "secrets" {
  for_each = local.organization_secrets

  secret_name = each.key
  visibility  = "selected"
  value       = each.value
}

moved {
  from = github_actions_organization_secret.username
  to   = github_actions_organization_secret.secrets["username"]
}

moved {
  from = github_actions_organization_secret.password
  to   = github_actions_organization_secret.secrets["password"]
}