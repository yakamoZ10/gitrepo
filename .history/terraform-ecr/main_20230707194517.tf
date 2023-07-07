provider "aws" {
    region = "eu-central-1"
    access_key = var.access_key
    secret_key = var.secret.key
}

resource "aws_ecr_repository" "foo" {
  name                 = "ardin-trn"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}