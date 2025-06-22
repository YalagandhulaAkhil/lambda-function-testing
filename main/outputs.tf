output "lambda_role_arn" {
  description = "The ARN of the created Lambda IAM role"
  value       = module.lambda_iam_role.role_arn
}

output "lambda_role_name" {
  description = "The name of the created Lambda IAM role"
  value       = module.lambda_iam_role.role_name
}
