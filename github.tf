terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "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"
}

resource "github_repository" "example" {
    name = "AWS-MultiTier-Architecture-using-Terraform"
    
}

