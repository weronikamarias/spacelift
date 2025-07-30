module "s3_bucket" {
  source      = "spacelift.io/weronikatest/s3-bucket"
  bucket_name = "my-test-bucket-${random_id.suffix.hex}"
}

resource "random_id" "suffix" {
  byte_length = 4
}
