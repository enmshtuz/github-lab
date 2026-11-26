# 1. Create the secret devops-team
resource "github_team" "devops_team" {
  name    = "devops-team"
  privacy = "secret"
}

# 2. Create the secret nodejs-team
resource "github_team" "nodejs_team" {
  name    = "nodejs-team"
  privacy = "secret"
}

# 3. Add 1 member to the organization
resource "github_membership" "org_member" {
  username = "danielazizyan"
  role     = "member"
}

# 4. Add the member to one of the teams (e.g., devops-team)
resource "github_team_membership" "devops_team_member" {
  for_each = toset(var.devops_team_membership)

  team_id  = github_team.devops_team.id
  username = each.key
  role     = "member"
}