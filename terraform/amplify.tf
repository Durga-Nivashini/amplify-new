resource "aws_amplify_app" "frontend" {

  name         = var.app_name
  repository   = var.github_repository
  access_token = var.github_token

  platform = "WEB"

  enable_branch_auto_build = true

  environment_variables = {
    AMPLIFY_MONOREPO_APP_ROOT = "frontend"
  }

  build_spec = <<EOF
version: 1
applications:
  - appRoot: frontend
    frontend:
      phases:
        preBuild:
          commands:
            - npm ci
        build:
          commands:
            - npm run build
      artifacts:
        baseDirectory: .next
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
          - .next/cache/**/*
EOF
}

resource "aws_amplify_branch" "main" {
  app_id              = aws_amplify_app.frontend.id
  branch_name         = var.branch_name
  framework           = "Next.js"
  stage               = "PRODUCTION"
  enable_auto_build   = true
}