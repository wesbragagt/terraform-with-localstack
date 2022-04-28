provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  endpoints {
    sns = "http://localstack:4566"
  }
}

resource "aws_sns_topic" "sns_topic" {
  name      =   "terraform-sns-localstack-topic"
}
