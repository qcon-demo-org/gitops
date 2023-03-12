provider "github" {
  app_auth {}
  owner = "qcon-demo-org"
}

resource "github_branch_protection" "branch_protection_spring-petclinic" {
  repository_id                   = "spring-petclinic"
  pattern                         = "main"
  require_conversation_resolution = true
  enforce_admins                  = true

  required_pull_request_reviews {
    required_approving_review_count = 2
    dismiss_stale_reviews           = true
  }
}
