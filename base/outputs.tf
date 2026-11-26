output "organization_id" {
  description = "GitHub organization ID"
  value       = github_organization_settings.organization.id
}

output "teams_ids" {
  description = "IDs of the organization teams"
  value = toset([
    github_team.devops_team.id,
    github_team.nodejs_team.id,
    github_team.security_team.id,
  ])
}

output "security_manager_team_slug" {
  description = "Slug of the security team"
  value       = github_team.security_team.slug
}

output "secret_names" {
  description = "Names of the organization secrets"
  value = toset([
    github_actions_organization_secret.username.secret_name,
    github_actions_organization_secret.password.secret_name,
  ])
}
