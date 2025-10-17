# S3 Bucket Module

Simple S3 bucket with optional versioning.

## Usage
```hcl
module "my_bucket" {
  source = "github.com/your-org/terraform-aws-s3-bucket"
  
  bucket_name       = "my-app-bucket"
  enable_versioning = true
  
  tags = {
    Environment = "prod"
    Team        = "platform"
  }
}
```
