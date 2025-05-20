resource "aws_eks_cluster" "this" {
  name = "${var.project_name}-eks-cluster"
  role_arn = var.eks_cluster_role_arn
  version = "1.32"

  vpc_config {
    subnet_ids = var.subnet_ids
    vpc_id = var.vpc_id
    endpoint_public_access = true
  }

  depends_on = [ aws_iam_role_policy_attachment.cluster_role_policy ]
}

resource "aws_eks_node_group" "this" {
  cluster_name = aws_eks_cluster.this.name
  node_group_name = "${var.project_name}-node-group"
  node_role_arn = var.eks_node_role_arn
  subnet_ids = var.subnet_ids

  scaling_config {
    desired_size = 1
    max_size = 3
    min_size = 1
  }

  instance_types = var.instance_types

  depends_on = [ aws_eks_cluster.this ]
}