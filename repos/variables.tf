variable "gh_token" {
  type      = string
  sensitive = true
}

variable "org_name" {
  type    = string
  default = "epam-tf"
}

variable "tf_lab_app_name" {
  type    = string
  default = "tf-lab-app"
}

variable "tf_github_lab_devops_repository_name" {
  type    = string
  default = "tf-lab-devops"
}

variable "tf_github_lab_devops_repository_description" {
  type    = string
  default = ""
}

variable "tf_lab_app_description" {
  type    = string
  default = ""
}

variable "homepage" {
  type    = string
  default = ""
}

variable "private" {
  type    = bool
  default = false
}

variable "has_issues" {
  type    = bool
  default = false
}

variable "has_projects" {
  type    = bool
  default = false
}

variable "has_wiki" {
  type    = bool
  default = false
}

variable "default_branch" {
  type    = string
  default = "main"
}

variable "allow_squash_merge" {
  type    = bool
  default = true
}

variable "allow_merge_commit" {
  type    = bool
  default = true
}

variable "allow_rebase_merge" {
  type    = bool
  default = true
}

variable "delete_branch_on_merge" {
  type    = bool
  default = true
}

variable "branches" {
  type = list(object({
    name                         = string
    requiresApprovingReviews     = optional(bool, true)
    requiredApprovingReviewCount = optional(number, 1)
    dismissesStaleReviews        = optional(bool, false)
    requiresCodeOwnerReviews     = optional(bool, false)
    requiresStatusChecks         = optional(bool, false)
    requiredStatusCheckContexts  = optional(list(string), [])
    requiresStrictStatusChecks   = optional(bool, false)
    requiresCommitSignatures     = optional(bool, false)
    restrictsPushes              = optional(bool, false)
    pushActorIds                 = optional(list(number), [])
    isAdminEnforced              = optional(bool, false)
  }))
  default = []
}

variable "devops_permissions" {
  type    = string
  default = "pull"
}

variable "nodejs_permissions" {
  type    = string
  default = "push"
}

variable "security_permissions" {
  type    = string
  default = "push"
}