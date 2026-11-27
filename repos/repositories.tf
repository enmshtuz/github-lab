resource "github_repository" "tf_lab_app" {
  name                   = var.tf_lab_app_name
  description            = var.tf_lab_app_description
  homepage_url           = var.homepage
  vulnerability_alerts   = true
  private                = var.private
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  allow_squash_merge     = var.allow_squash_merge
  allow_merge_commit     = var.allow_merge_commit
  allow_rebase_merge     = var.allow_rebase_merge
  delete_branch_on_merge = var.delete_branch_on_merge
  auto_init              = true
}

resource "github_repository_file" "codeowners" {
  repository = github_repository.tf_lab_app.name
  file       = ".github/CODEOWNERS"
  content    = "* @epam-tf/security-team"
}

resource "github_team_repository" "nodejs_team" {
  team_id    = local.nodejs_team_slug
  repository = github_repository.tf_lab_app.name
  permission = var.nodejs_permissions
}

resource "github_team_repository" "security_team" {
  team_id    = local.security_team_slug
  repository = github_repository.tf_lab_app.name
  permission = var.security_permissions
}

resource "github_team_repository" "devops_team" {
  team_id    = local.devops_team_slug
  repository = github_repository.tf_lab_app.name
  permission = var.devops_permissions
}