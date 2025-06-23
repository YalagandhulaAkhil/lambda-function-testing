provider "aws" {
  region = var.aws_region
}

module "lambda_iam_role" {
  source    = "./modules/iam_role_for_lambda"
  role_name = var.lambda_role_name
  tags      = var.tags
}

output "lambda_role_arn" {
  value = module.lambda_iam_role.role_arn
}

output "lambda_role_name" {
  value = module.lambda_iam_role.role_name
}

module "lambda_function" {
  source               = "./modules/lambda_function"
  lambda_function_name = var.lambda_function_name
  runtime              = var.lambda_runtime
  handler              = var.lambda_handler
  s3_bucket            = var.s3_bucket
  s3_key               = var.s3_key
  lambda_role_arn      = module.lambda_iam_role.role_arn
  environment_variables = {
    ENVIRONMENT = var.environment
  }
}

