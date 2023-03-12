resource "github_repository" "github_repo" {
  name        = var.repo_name
  description = var.repo_description
  auto_init   = true
}

resource "github_branch_protection_v3" "branch_protection" {
  repository     = github_repository.github_repo.name
  branch         = "main"
  enforce_admins = true

  required_pull_request_reviews {
    dismiss_stale_reviews      = false
    require_code_owner_reviews = true
  }

}
