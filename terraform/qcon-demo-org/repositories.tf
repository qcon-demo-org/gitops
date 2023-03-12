provider "github" {
  app_auth {}
  owner = "qcon-demo-org"
}

resource "github_repository" "spring-petclinic-2" {
  name        = "spring-petclinic-2"
  description = "A sample Spring-based application"
  visibility  = "public"
  auto_init   = true
}


