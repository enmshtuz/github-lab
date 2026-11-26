data "github_team" "devops-team" {
  slug         = "devops-team"
  summary_only = true # Optional: skips fetching full member/repo lists for faster runs
}

data "github_team" "nodejs-team" {
  slug         = "nodejs-team"
  summary_only = true
}

data "github_team" "security-team" {
  slug         = "security-team"
  summary_only = true
}

# Save each team's slug (or full object/ID) in separate local variables
locals {
  devops_team_slug   = data.github_team.devops-team.slug
  nodejs_team_slug   = data.github_team.nodejs-team.slug
  security_team_slug = data.github_team.security-team.slug
}