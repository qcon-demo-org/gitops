terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-state-us-west-2-477763281534"
    key            = "qcon-demo-org-terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-locks"
  }

}