resource "github_repository" "repo2" {
  name        = "repo2"
  description = "Test repo2"
  visibility  = "public"

  auto_init              = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true
}
