provider "github" {
  app_auth {}
  owner = "qcon-demo-org"
}

resource "github_repository" "spring-petclinic" {
  name        = "spring-petclinic"
  description = "A sample Spring-based application"
  visibility  = "public"
  auto_init   = true
}



