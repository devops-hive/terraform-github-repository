variable "name" {
  description = " (Required) The name of the repository."
  type        = string
}

variable "description" {
  description = "(Optional) A description of the repository."
  type        = string
  default     = null
}

variable "homepage_url" {
  description = "(Optional) URL of a page describing the project."
  type        = string
  default     = null
}

variable "visibility" {
  description = " (Optional) Can be public or private. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be internal."
  type        = string
  default     = "public"
}

variable "has_issues" {
  description = "(Optional) Set to true to enable the GitHub Issues features on the repository."
  type        = bool
  default     = null
}

variable "has_discussions" {
  description = "(Optional) Set to true to enable GitHub Discussions on the repository. Defaults to false."
  type        = bool
  default     = null
}

variable "has_projects" {
  description = "(Optional) Set to true to enable the GitHub Projects features on the repository. Per the GitHub documentation when in an organization that has disabled repository projects it will default to false and will otherwise default to true. If you specify true when it has been disabled it will return an error."
  type        = bool
  default     = null
}

variable "has_wiki" {
  description = "(Optional) Set to true to enable the GitHub Wiki features on the repository."
  type        = bool
  default     = null
}

variable "is_template" {
  description = "(Optional) Set to true to tell GitHub that this is a template repository."
  type        = bool
  default     = null
}

variable "allow_merge_commit" {
  description = "(Optional) Set to false to disable merge commits on the repository."
  type        = bool
  default     = null
}

variable "allow_squash_merge" {
  description = "(Optional) Set to false to disable squash merges on the repository."
  type        = bool
  default     = null
}

variable "allow_rebase_merge" {
  description = "(Optional) Set to false to disable rebase merges on the repository."
  type        = bool
  default     = null
}

variable "allow_auto_merge" {
  description = "(Optional) Set to true to allow auto-merging pull requests on the repository."
  type        = bool
  default     = null
}

variable "squash_merge_commit_title" {
  description = "(Optional) Can be PR_TITLE or COMMIT_OR_PR_TITLE for a default squash merge commit title. Applicable only if allow_squash_merge is true."
  type        = bool
  default     = null
}

variable "squash_merge_commit_message" {
  description = "(Optional) Can be PR_BODY, COMMIT_MESSAGES, or BLANK for a default squash merge commit message. Applicable only if allow_squash_merge is true."
  type        = bool
  default     = null
}

variable "merge_commit_title" {
  description = "Can be PR_TITLE or MERGE_MESSAGE for a default merge commit title. Applicable only if allow_merge_commit is true."
  type        = bool
  default     = null
}

variable "merge_commit_message" {
  description = "Can be PR_BODY, PR_TITLE, or BLANK for a default merge commit message. Applicable only if allow_merge_commit is true."
  type        = bool
  default     = null
}


variable "delete_branch_on_merge" {
  description = "(Optional) Automatically delete head branch after a pull request is merged. Defaults to false."
  type        = bool
  default     = false
}

variable "web_commit_signoff_required" {
  description = " (Optional) Require contributors to sign off on web-based commits. See more here. Defaults to false."
  type        = bool
  default     = false
}

variable "auto_init" {
  description = "(Optional) Set to true to produce an initial commit in the repository."
  type        = bool
  default     = null
}

variable "gitignore_template" {
  description = "(Optional) Use the name of the template without the extension. For example, 'Haskell'."
  type        = string
  default     = null
}

variable "license_template" {
  description = "(Optional) Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'."
  type        = string
  default     = null
}

variable "archived" {
  description = "(Optional) Specifies if the repository should be archived. Defaults to false. NOTE Currently, the API does not support unarchiving."
  type        = bool
  default     = false
}

variable "archive_on_destroy" {
  description = "(Optional) Set to true to archive the repository instead of deleting on destroy."
  type        = bool
  default     = null
}
