variable "aws_region" {
  default = "us-west-2"
}
provider "aws" {
  region = var.aws_region
}

data "aws_vpc" "default" {
  default = true
}

module "web_server_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "web-server"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = data.aws_vpc.default.id

  ingress_cidr_blocks = ["10.10.0.0/16"]
  ingress_rules = ["https-443-tcp"]
}