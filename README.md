### Terraform GitHub Repository

This module creates a GitHub repository and the associated resources using terraform.
The module aims to provide a simplified way of creating github repository resources within a very short time while covering all the necessary configurations.

[GitHub Documentation](https://docs.github.com/en/repositories)

[Terraform Documentation](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository)

## Scope
This module currently creates resources that are under the GitHub's free plan. In future releases, the module will cover features offered in Teams and Enterprise plans.

## Basic example of how to create a single repository using this module
```
```

## Basic example of how to create multiple repositories using this module
```
```

Feel free to customize the configuration based on your needs.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.3 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 6.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch.default](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch.repo_branches](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch_default.default](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_issue_labels.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_labels) | resource |
| [github_repository.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_collaborators.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_collaborators) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_auto_merge"></a> [allow\_auto\_merge](#input\_allow\_auto\_merge) | (Optional) Set to true to allow auto-merging pull requests on the repository. | `bool` | `null` | no |
| <a name="input_allow_merge_commit"></a> [allow\_merge\_commit](#input\_allow\_merge\_commit) | (Optional) Set to false to disable merge commits on the repository. | `bool` | `true` | no |
| <a name="input_allow_rebase_merge"></a> [allow\_rebase\_merge](#input\_allow\_rebase\_merge) | (Optional) Set to false to disable rebase merges on the repository. | `bool` | `true` | no |
| <a name="input_allow_squash_merge"></a> [allow\_squash\_merge](#input\_allow\_squash\_merge) | (Optional) Set to false to disable squash merges on the repository. | `bool` | `true` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | (Optional) Set to true to archive the repository instead of deleting on destroy. | `bool` | `null` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | (Optional) Specifies if the repository should be archived. Defaults to false. NOTE Currently, the API does not support unarchiving. | `bool` | `false` | no |
| <a name="input_auto_init"></a> [auto\_init](#input\_auto\_init) | (Optional) Set to true to produce an initial commit in the repository. | `bool` | `null` | no |
| <a name="input_branches"></a> [branches](#input\_branches) | Map of additional branches to be created in the repository | `map(map(string))` | `{}` | no |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | The repository branch to create. | `string` | `null` | no |
| <a name="input_default_source_branch"></a> [default\_source\_branch](#input\_default\_source\_branch) | (Optional) The branch name to start from for the default branch. Defaults to main. | `string` | `"main"` | no |
| <a name="input_default_source_sha"></a> [default\_source\_sha](#input\_default\_source\_sha) | (Optional) The commit hash to start from for the default branch. Defaults to the tip of source\_branch. If provided, source\_branch is ignored. | `string` | `null` | no |
| <a name="input_delete_branch_on_merge"></a> [delete\_branch\_on\_merge](#input\_delete\_branch\_on\_merge) | (Optional) Automatically delete head branch after a pull request is merged. Defaults to false. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description of the repository. | `string` | `null` | no |
| <a name="input_gitignore_template"></a> [gitignore\_template](#input\_gitignore\_template) | (Optional) Use the name of the template without the extension. For example, 'Haskell'. | `string` | `null` | no |
| <a name="input_has_discussions"></a> [has\_discussions](#input\_has\_discussions) | (Optional) Set to true to enable GitHub Discussions on the repository. Defaults to false. | `bool` | `null` | no |
| <a name="input_has_issues"></a> [has\_issues](#input\_has\_issues) | (Optional) Set to true to enable the GitHub Issues features on the repository. | `bool` | `null` | no |
| <a name="input_has_projects"></a> [has\_projects](#input\_has\_projects) | (Optional) Set to true to enable the GitHub Projects features on the repository. Per the GitHub documentation when in an organization that has disabled repository projects it will default to false and will otherwise default to true. If you specify true when it has been disabled it will return an error. | `bool` | `null` | no |
| <a name="input_has_wiki"></a> [has\_wiki](#input\_has\_wiki) | (Optional) Set to true to enable the GitHub Wiki features on the repository. | `bool` | `null` | no |
| <a name="input_homepage_url"></a> [homepage\_url](#input\_homepage\_url) | (Optional) URL of a page describing the project. | `string` | `null` | no |
| <a name="input_is_template"></a> [is\_template](#input\_is\_template) | (Optional) Set to true to tell GitHub that this is a template repository. | `bool` | `null` | no |
| <a name="input_issue_labels"></a> [issue\_labels](#input\_issue\_labels) | Issue labels to be created in your repository | `list(map(string))` | `[]` | no |
| <a name="input_license_template"></a> [license\_template](#input\_license\_template) | (Optional) Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'. | `string` | `null` | no |
| <a name="input_merge_commit_message"></a> [merge\_commit\_message](#input\_merge\_commit\_message) | Can be PR\_BODY, PR\_TITLE, or BLANK for a default merge commit message. Applicable only if allow\_merge\_commit is true. | `string` | `null` | no |
| <a name="input_merge_commit_title"></a> [merge\_commit\_title](#input\_merge\_commit\_title) | Can be PR\_TITLE or MERGE\_MESSAGE for a default merge commit title. Applicable only if allow\_merge\_commit is true. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the repository. | `string` | n/a | yes |
| <a name="input_pages"></a> [pages](#input\_pages) | (Optional) The repository's GitHub Pages configuration. | `any` | `null` | no |
| <a name="input_repo_team_collaborators"></a> [repo\_team\_collaborators](#input\_repo\_team\_collaborators) | value | `list(map(string))` | `[]` | no |
| <a name="input_repo_user_collaborators"></a> [repo\_user\_collaborators](#input\_repo\_user\_collaborators) | value | `list(map(string))` | `[]` | no |
| <a name="input_source_branch"></a> [source\_branch](#input\_source\_branch) | (Optional) The branch name to start from. Defaults to main. | `string` | `"main"` | no |
| <a name="input_source_sha"></a> [source\_sha](#input\_source\_sha) | (Optional) The commit hash to start from. Defaults to the tip of source\_branch. If provided, source\_branch is ignored. | `string` | `null` | no |
| <a name="input_squash_merge_commit_message"></a> [squash\_merge\_commit\_message](#input\_squash\_merge\_commit\_message) | (Optional) Can be PR\_BODY, COMMIT\_MESSAGES, or BLANK for a default squash merge commit message. Applicable only if allow\_squash\_merge is true. | `string` | `null` | no |
| <a name="input_squash_merge_commit_title"></a> [squash\_merge\_commit\_title](#input\_squash\_merge\_commit\_title) | (Optional) Can be PR\_TITLE or COMMIT\_OR\_PR\_TITLE for a default squash merge commit title. Applicable only if allow\_squash\_merge is true. | `string` | `null` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | (Optional) Can be public or private. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be internal. | `string` | `"public"` | no |
| <a name="input_web_commit_signoff_required"></a> [web\_commit\_signoff\_required](#input\_web\_commit\_signoff\_required) | (Optional) Require contributors to sign off on web-based commits. See more here. Defaults to false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_full_name"></a> [full\_name](#output\_full\_name) | A string of the form 'orgname/reponame'. |
| <a name="output_git_clone_url"></a> [git\_clone\_url](#output\_git\_clone\_url) | URL that can be provided to git clone to clone the repository anonymously via the git protocol. |
| <a name="output_html_url"></a> [html\_url](#output\_html\_url) | URL to the repository on the web. |
| <a name="output_http_clone_url"></a> [http\_clone\_url](#output\_http\_clone\_url) | URL that can be provided to git clone to clone the repository via HTTPS. |
| <a name="output_node_id"></a> [node\_id](#output\_node\_id) | GraphQL global node id for use with v4 API |
| <a name="output_pages"></a> [pages](#output\_pages) | The block consisting of the repository's GitHub Pages configuration with the following additional attributes: custom\_404 - Whether the rendered GitHub Pages site has a custom 404 page. html\_url - The absolute URL (including scheme) of the rendered GitHub Pages site e.g. https://username.github.io. status - The GitHub Pages site's build status e.g. building or built. |
| <a name="output_primary_language"></a> [primary\_language](#output\_primary\_language) | The primary language used in the repository. |
| <a name="output_repo_id"></a> [repo\_id](#output\_repo\_id) | GitHub ID for the repository |
| <a name="output_ssh_clone_url"></a> [ssh\_clone\_url](#output\_ssh\_clone\_url) | URL that can be provided to git clone to clone the repository via SSH. |
| <a name="output_svn_url"></a> [svn\_url](#output\_svn\_url) | URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

Copyright (c) 2024 Devops-Hive
