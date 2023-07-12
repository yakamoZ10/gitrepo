variable "access_key"{

    description = "acces key id for the provider"
}

variable "secret_key" {
    
    description = "Secret key for the provider"
}

variable "access_key" {
}
variable "secret_key" {
}
data "aws_route53_zone" "name" {
  name = local.domain
}
provider "aws" {
  region = "eu-central-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
locals {
  domain = "appstellar.training"
}
module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "~> 4.0"
  domain_name  = "lirigzon.${local.domain}"
  zone_id      = data.aws_route53_zone.name.zone_id
  wait_for_validation = true
  tags = {
    Name = "lirigzon.${local.domain}"
  }
}