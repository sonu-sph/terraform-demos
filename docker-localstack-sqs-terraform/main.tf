provider "aws" {
  region = "us-east-1"
  access_key = "test123"
  secret_key = "testabc"
  skip_credentials_validation = true
  skip_requesting_account_id = true
  skip_metadata_api_check = true

  endpoints {
    sqs = "http://localhost.localstack.cloud:4566"
  }
}

# Create queue
resource "aws_sqs_queue" "queue" {
  name = "myqueue"
}
