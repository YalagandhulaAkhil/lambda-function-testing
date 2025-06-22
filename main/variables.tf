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
