variable "eks_cluster_role_name" {
  type = string
  description = "eks cluster role name"
}

variable "eks_node_group_role_name" {
  type = string
  description = "eks node group role name"
}

variable "desired_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "eks_cluster_name" {
  type = string
  
}

variable "node_group_name" {
  type = string
}

# variable "subnet_ids" {
#   type = list(string)
# }

variable "vpc_cidr" {
  type = string
  
}

variable "public_subnet_cidrs" {
  type = list(string)
}
variable "private_subnet_cidr" {
  type = string
}

variable "availability_zones" {
  type = list(string)
  
}