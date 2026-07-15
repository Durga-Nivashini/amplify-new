output "amplify_app_id" {
  value = aws_amplify_app.frontend.id
}

output "amplify_default_domain" {
  value = aws_amplify_app.frontend.default_domain
}

output "amplify_console_url" {
  value = "https://${var.aws_region}.console.aws.amazon.com/amplify/home#/d2/apps/${aws_amplify_app.frontend.id}"
}