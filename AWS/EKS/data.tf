## Getting all the availability zones within your AWS Region
data "aws_availability_zones" "azs" {}

# Retrieve EKS cluster configuration
data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}

data "aws_route53_zone" "dns" {
  count = var.enable_dns ? 1 : 0
  name = var.hostedzonename
}