variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix for bucket name"
  type        = string
  default     = "spacelift-clean"
}

variable "environment" {
  description = "Environment label"
  type        = string
  default     = "UX"
}

variable "owner" {
  description = "Bucket owner"
  type        = string
  default     = "weronika"
}

variable "project" {
  description = "Project name for tagging"
  type        = string
  default     = "spacelift-demo"
}
