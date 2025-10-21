resource "spacelift_stack" "created_by_stack" {
  name       = "test-created-by-admin-stack"
  repository = "spacelift-io/terraform-starter"
  branch     = "main"
  # No space_id = inherits from parent stack
}
