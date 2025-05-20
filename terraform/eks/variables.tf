variable "project_name" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "eks_cluster_role_arn" {
  type = string
}

variable "eks_node_role_arn" {
  type = string
}

variable "instance_types" {
  type = list(string)
}

