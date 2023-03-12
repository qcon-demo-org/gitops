provider "github" {
  app_auth {}
  owner = "qcon-demo-org"
}

resource "github_repository" "repo" {
  name        = "project1"
  description = "Project1's repo"
  visibility  = "public"

  auto_init              = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true
}

resource "github_branch_protection" "default" {
  repository_id                   = github_repository.repo.id
  pattern                         = "main"
  require_conversation_resolution = true
  enforce_admins                  = true

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews      = true
  }
}
