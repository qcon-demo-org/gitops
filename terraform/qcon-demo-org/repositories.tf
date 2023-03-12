provider "github" {
  app_auth {}
  owner = "qcon-demo-org"
}

resource "github_branch_protection_v3" "branch_protection_spring-petclinic" {
  repository                      = "spring-petclinic"
  pattern                         = "main"
  require_conversation_resolution = true
  enforce_admins                  = true

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = true
  }
}
