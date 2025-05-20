variable "cidr_block" {
  type = string
}

variable "project_name" {
  type = string
}

variable "public_subnet_cidrs" {
  type = string
}

variable "private_subnet_cidrs" {
  type = string
}

variable "availability_zone" {
  type = list(string)
}

variable "instance_types" {
  type = list(string)
}



