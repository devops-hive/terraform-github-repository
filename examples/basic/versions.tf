terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 6.0.0"
    }
  }

  required_version = ">= 1.7.3"
}
