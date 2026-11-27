resource "github_repository" "tf_github_lab_devops_repository" {
  name                   = var.tf_github_lab_devops_repository_name
  description            = "${var.org_name} ${var.tf_github_lab_devops_repository_description}"
  homepage_url           = var.homepage
  visibility             = "private"
  has_issues             = var.has_issues
  has_projects           = var.has_projects
  has_wiki               = var.has_wiki
  allow_squash_merge     = var.allow_squash_merge
  allow_merge_commit     = var.allow_merge_commit
  allow_rebase_merge     = var.allow_rebase_merge
  delete_branch_on_merge = false
  vulnerability_alerts   = true
  auto_init              = true
}