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

resource "github_branch_protection" "branch_protection_spring-petclinic-2" {
  repository_id                   = "spring-petclinic-2"
  pattern                         = "main"
  require_conversation_resolution = true
  enforce_admins                  = true

  required_pull_request_reviews {
    required_approving_review_count = 2
    dismiss_stale_reviews           = true
  }
}
