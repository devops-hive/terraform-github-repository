module "basic_repo" {
  source      = "./../../"
  name        = "basic-repository"
  description = "Basic repository created using the devops-hive terraform module"
  visibility = "private"
}