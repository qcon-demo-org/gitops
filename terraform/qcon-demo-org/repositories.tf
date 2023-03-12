module "terraform_repo2" {
  source           = "../modules/github_repository"
  repo_name        = "repo2"
  repo_description = "Test repo2"
}
