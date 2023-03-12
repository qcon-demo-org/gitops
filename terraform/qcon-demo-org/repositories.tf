module "terraform_spring-petclinic" {
  source           = "../modules/github_repository"
  repo_name        = "spring-petclinic"
  repo_description = "A sample Spring-based application"
}