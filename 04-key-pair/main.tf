variable "aws_region" {
  default = "us-west-2"
}
provider "aws" {
  region = var.aws_region
}

module "key_pai" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name           = "deployer-one"
  create_private_key = true
}