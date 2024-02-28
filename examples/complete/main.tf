## This team is created to show how to setup github team repository.
resource "github_team" "example_team" {
  name        = "example-team"
  description = "This is an example team"
  privacy     = "closed"
}

resource "github_team_members" "example_team_members" {
  team_id = github_team.example_team.id

  members {
    username = "ndegwajm"
    role     = "member"
  }
}

## Complete repository example
module "complete_repository" {
  source                      = "./../../"
  name                        = "complete-repository-example"
  description                 = "This is an example repository created using devops-hive's terraform module. The repository showcases all the module configurations"
  homepage_url                = "example.com"
  visibility                  = "public" #Set to public to show github pages
  has_issues                  = true
  has_discussions             = true
  has_projects                = true
  has_wiki                    = true
  is_template                 = false
  allow_merge_commit          = true
  allow_squash_merge          = true
  allow_rebase_merge          = true
  allow_auto_merge            = true
  squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"
  squash_merge_commit_message = "COMMIT_MESSAGES"
  merge_commit_title          = "PR_TITLE"
  merge_commit_message        = "PR_BODY"
  delete_branch_on_merge      = true
  web_commit_signoff_required = false
  auto_init                   = true
  gitignore_template          = "Terraform"
  license_template            = "mit"
  archived                    = false
  archive_on_destroy          = false
  default_branch              = "develop"

  pages = {
    build_type = "legacy"
    source = {
      branch = "main"
      path   = "/"
    }
  }

  branches = {
    dev = {
      branch        = "dev"
      source_branch = "main"
    }

    test = {
      branch        = "test"
      source_branch = "main"
    }
  }

  repo_user_collaborators = [
    {
      username   = "ndegwajohn"
      permission = "admin" # Must be one of pull, triage, push, maintain, admin
    }
  ]

  repo_team_collaborators = [
    {
      team_id    = github_team.example_team.slug
      permission = "push" # Must be one of pull, triage, push, maintain, admin
    }
  ]

  issue_labels = [
    {
      description = "example issue label 1"
      name        = "Urgent"
      color       = "FF0000"
    },
    {
      description = "example issue label 2"
      name        = "Critical"
      color       = "FF0000"
    }
  ]
  depends_on = [github_team.example_team]
}
