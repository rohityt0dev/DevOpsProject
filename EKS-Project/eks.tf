module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnets

  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    default = {
      instance_types = [var.instance_type]
      min_size       = 1
      max_size       = 3
      desired_size   = 2
    }
  }
  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}