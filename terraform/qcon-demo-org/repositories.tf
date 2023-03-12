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

resource "github_branch_protection" "branch_protection_spring-petclinic" {
  repository_id                   = "spring-petclinic"
  pattern                         = "main"
  require_conversation_resolution = true
  enforce_admins                  = true

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = true
  }
}

