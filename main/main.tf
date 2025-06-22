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
