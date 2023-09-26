resource "aws_s3_bucket" "remote_state_s3" {
  bucket = "your-unique-bucket-name"
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  versioning_configuration {
    status = "Enabled"
  }
}
 resource "aws_s3_bucket_server_side_encryption_configuration" "sse_encrypt" {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

