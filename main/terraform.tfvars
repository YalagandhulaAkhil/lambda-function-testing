lambda_role_name = "my-lambda-execution-role"

tags = {
  Environment = "dev"
  Owner       = "sudhir"
  Project     = "lambda-infra"
}

lambda_function_name = "my-lambda-func"
lambda_runtime       = "python3.12"
lambda_handler       = "main.lambda_handler"
s3_bucket            = "to-store-lambda-function-code"
s3_key               = "my-function.zip"


