module "backend" {
  source = "../../terraform/backend"
}

module "vpc" {
  source = "../../terraform/vpc"
  project_name = var.project_name
  cidr_block = var.cidr_block
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zone = var.availability_zone
}

module "iam" {
  source = "../../terraform/iam"
  project_name = var.project_name
}

module "ecr" {
  source = "../../terraform/ecr"
  project_name = var.project_name
}

module "eks" {
  source = "../../terraform/eks"
  subnet_ids = module.vpc.private_subnets
  vpc_id = module.vpc.vpc_id
  eks_cluster_role_arn = module.iam.eks_cluster_role_arn
  eks_node_role_arn = module.iam.eks_node_role_arn
  instance_types = var.instance_types
  project_name = var.project_name
  depends_on = [ module.iam, module.vpc ]
}