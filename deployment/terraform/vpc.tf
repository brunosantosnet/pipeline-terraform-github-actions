module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"

  name = "pipeline-terraform-github-actions-${var.environment}-network"
  cidr = var.cidr

  azs             = var.azs
  private_subnets = var.private-subnets
  public_subnets  = var.public-subnets

  enable_nat_gateway = false
  single_nat_gateway = false

}