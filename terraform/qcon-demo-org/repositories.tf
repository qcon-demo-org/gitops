module "terraform_spring-petclinic" {
  source           = "../modules/github_repository"
  repo_name        = "spring-petclinic"
  repo_description = "A sample Spring-based application"
}
  
module "terraform_repo2" {
  source           = "../modules/github_repository"
  repo_name        = "repo2"
  repo_description = "Test repo2"
}
