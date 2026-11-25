# 1. Create the security team
resource "github_team" "security_team" {
  name    = "security-team"
  privacy = "closed"
}

# 2. Fetch the organization roles to look up the "security_manager" role ID
data "github_organization_roles" "all" {}

locals {
  security_manager_role_id = one([
    for role in data.github_organization_roles.all.roles : role.role_id
    if role.name == "security_manager"
  ])
}

# 3. Assign the Security Manager role directly to the user in the organization
resource "github_organization_role_user" "security_manager_user" {
  role_id = local.security_manager_role_id
  login   = var.security_manager_username
}

# 4. Add the user to the security-team
resource "github_team_membership" "security_team_member" {
  team_id  = github_team.security_team.id
  username = var.security_manager_username
  role     = "member"

  depends_on = [github_organization_role_user.security_manager_user]
}