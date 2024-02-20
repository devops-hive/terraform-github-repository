resource "github_repository" "main" {
  name                        = var.name
  description                 = var.description
  homepage_url                = var.homepage_url
  visibility                  = var.visibility
  has_issues                  = var.has_issues
  has_discussions             = var.has_discussions
  has_projects                = var.has_projects
  has_wiki                    = var.has_wiki
  is_template                 = var.is_template
  allow_merge_commit          = var.allow_merge_commit
  allow_squash_merge          = var.allow_squash_merge
  allow_rebase_merge          = var.allow_rebase_merge
  allow_auto_merge            = var.allow_auto_merge
  squash_merge_commit_title   = var.allow_squash_merge ? var.squash_merge_commit_title : null
  squash_merge_commit_message = var.allow_squash_merge ? var.squash_merge_commit_message : null
  merge_commit_title          = var.allow_merge_commit ? var.merge_commit_title : null
  merge_commit_message        = var.allow_merge_commit ? var.merge_commit_message : null
  delete_branch_on_merge      = var.delete_branch_on_merge
  web_commit_signoff_required = var.web_commit_signoff_required
  auto_init                   = var.auto_init
  gitignore_template          = var.gitignore_template
  license_template            = var.license_template
  archived                    = var.archived
  archive_on_destroy          = var.archive_on_destroy
  dynamic "pages" {
    for_each = var.pages != null ? [true] : []
    content {
      build_type = lookup(var.pages, "build_type", null)
      cname      = lookup(var.pages, "cname", null)
      source {
        branch = lookup(var.pages.source, "branch", null)
        path   = lookup(var.pages.source, "path", "/")
      }
    }
  }
}

resource "github_branch" "others" {
  for_each      = var.branches
  repository    = github_repository.main.name
  branch        = lookup(var.branches, "branch")
  source_branch = lookup(var.branches, "source_branch", "main")
  source_sha    = lookup(var.branches, "source_branch", null)
}

resource "github_branch" "default" {
  count         = var.default_branch != null ? 1 : 0
  repository    = github_repository.main.name
  branch        = var.default_branch
  source_branch = var.default_source_branch
  source_sha    = var.default_source_sha
}

resource "github_branch_default" "default" {
  count         = var.default_branch != null ? 1 : 0
  repository = github_repository.main.name
  branch     = github_branch.default[0].branch
}

resource "github_repository_collaborators" "main" {
  count = var.repo_user_collaborators != {} || var.repo_team_collaborators != {} ? 1 : 0
  repository = github_repository.main.name
  dynamic "user" {
    for_each = var.repo_user_collaborators
    content {
      permission = lookup(var.repo_user_collaborators, "permissions", null)
      username   = lookup(var.repo_user_collaborators, "username")
    }
  }

  dynamic "team" {
    for_each = var.repo_team_collaborators
    content {
      permission = lookup(var.repo_team_collaborators, "permissions", null)
      team_id    = lookup(var.repo_team_collaborators, "team_id")
    }
  }
}

resource "github_issue_labels" "main" {
  count = length(var.issue_labels) > 0 ? 1 : 0
  repository = github_repository.main.name
  dynamic "label" {
    for_each = var.issue_labels
    content {
      name        = lookup(var.issue_labels, "name")
      color       = lookup(var.issue_labels, "color")
      description = lookup(var.issue_labels, "description", null)
    }
  }
}
