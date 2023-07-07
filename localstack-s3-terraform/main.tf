# Public Cloud Configuration
provider "aws" {
  region = "us-east-1"
  access_key = "test"
  secret_key = "test"
  skip_credentials_validation = true
  skip_requesting_account_id = true
  skip_metadata_api_check = true

  endpoints {
    s3 = "https://0.0.0.0:4566"
  }
}

# Create Bucket
resource "aws_s3_bucket" "buck" {
  bucket = "one-bucket"
}

resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.b.id}"
  key    = "key1"
  acl = "public-read"
  source = "test.txt"
}