terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# provider "aws" {
#   region = var.aws_region
# }

# --- Test tối giản: chưa tạo resource nào ---
# `terraform plan` sẽ báo "No changes" vì chưa khai báo resource.
# Khi nào muốn test tạo thật, bỏ comment khối S3 bên dưới.

# resource "aws_s3_bucket" "test" {
#   bucket = "luan-terraform-${random_id.suffix.hex}"
# }
#
# resource "random_id" "suffix" {
#   byte_length = 4
# }
