variable "lambda_function_name" {
  type        = string
  description = "Lambda function name"
}

variable "runtime" {
  type        = string
  description = "Runtime (e.g. python3.12)"
}

variable "handler" {
  type        = string
  description = "Lambda handler (e.g. main.lambda_handler)"
}

variable "s3_bucket" {
  type        = string
  description = "S3 bucket name"
}

variable "s3_key" {
  type        = string
  description = "Path to the Lambda .zip in S3"
}

variable "lambda_role_arn" {
  type        = string
  description = "IAM Role ARN to attach to Lambda"
}

variable "environment_variables" {
  type        = map(string)
  description = "Environment variables for Lambda"
  default     = {}
}
