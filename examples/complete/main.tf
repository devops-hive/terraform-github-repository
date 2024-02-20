module "complete-repository" {
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

  pages = {
    build_type = "legacy"
    source = {
      branch = "main"
      path   = "/"
    }
  }
}