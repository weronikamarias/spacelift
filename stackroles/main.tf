terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

resource "spacelift_stack" "created_by_stack" {
  name       = "test-created-by-admin-stack"
  repository = "your-org/your-repo"
  branch     = "main"
  space_id   = "space-a-01JH33WBRPD0X1813SC7C44SK0"
}
