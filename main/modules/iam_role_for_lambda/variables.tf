variable "role_name" {
  type        = string
  description = "Name of the IAM role for Lambda"
}

variable "tags" {
  type        = map(string)
  description = "Tags to associate with the role"
  default     = {}
}
