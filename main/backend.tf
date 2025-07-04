terraform {
  backend "s3" {
    bucket         = "tf-demo-to-testing-6-18-2025"
    key            = "lambda/iam-role/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamoDB-table-for-testing"
    encrypt        = true
  }
}
