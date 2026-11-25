resource "github_repository" "tf_lab_app" {
  name                   = "tf-lab-app"
  description            = "TF GitHub lab repository for nodejs app"
  vulnerability_alerts   = true
  visibility             = "public"
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  allow_squash_merge     = true
  allow_merge_commit     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true
  auto_init              = true
}

resource "github_repository_file" "codeowners" {
  repository = github_repository.tf_lab_app.name
  file       = ".github/CODEOWNERS"
  content    = "* @epam-tf/security-team"
}

data "github_team" "nodejs_team" {
  slug = "nodejs-team"
}

data "github_team" "security_team" {
  slug = "security-team"
}

data "github_team" "devops_team" {
  slug = "devops-team"
}

resource "github_team_repository" "nodejs_team" {
  team_id    = data.github_team.nodejs_team.id
  repository = github_repository.tf_lab_app.name
  permission = "push"
}

resource "github_team_repository" "security_team" {
  team_id    = data.github_team.security_team.id
  repository = github_repository.tf_lab_app.name
  permission = "push"
}

resource "github_team_repository" "devops_team" {
  team_id    = data.github_team.devops_team.id
  repository = github_repository.tf_lab_app.name
  permission = "pull"
}