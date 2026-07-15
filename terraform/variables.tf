variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "github_repository" {
  description = "GitHub repository URL"
  type        = string
}

variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}

variable "branch_name" {
  description = "GitHub branch"
  type        = string
  default     = "main"
}

variable "app_name" {
  description = "Amplify App Name"
  type        = string
}