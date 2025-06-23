variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "lambda_role_name" {
  description = "Name of the IAM role for Lambda"
  type        = string
}

variable "tags" {
  description = "Common tags to apply"
  type        = map(string)
  default     = {}
}

variable "lambda_function_name" {
  type        = string
  description = "Lambda function name"
}

variable "lambda_runtime" {
  type        = string
  description = "Lambda runtime (e.g., python3.12)"
}

variable "lambda_handler" {
  type        = string
  description = "Lambda handler function (e.g., main.lambda_handler)"
}

variable "s3_bucket" {
  type        = string
  description = "S3 bucket name where Lambda zip is stored"
}

variable "s3_key" {
  type        = string
  description = "S3 key (object path) of the Lambda zip"
}

variable "environment" {
  type        = string
  description = "Environment for the Lambda function (e.g., dev, prod)"
  default     = "dev"
}
