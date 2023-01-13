module "ec2-iam-role" {
  source  = "Smartbrood/ec2-iam-role/aws"
  name    = "ec2-iam-role-06"
  version = "0.3.0"

  policy_arn = [
    "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",
    "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess",
  ]
}