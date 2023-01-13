provider "aws" {
  region = "us-west-2"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "ec2-module-${each.key}"

  ami                    = "ami-830c94e3"
  instance_type          = "t2.micro"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}