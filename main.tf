terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket        = "${var.bucket_prefix}-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Environment = var.environment
    Owner       = var.owner
    Project     = var.project
  }
}
