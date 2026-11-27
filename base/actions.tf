resource "github_actions_organization_permissions" "actions_tf_lab_app" {
  enabled_repositories = "selected"
  allowed_actions      = "all"
  enabled_repositories_config {
    repository_ids = toset([data.github_repository.tf_lab_app.repo_id])
  }
}