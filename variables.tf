variable "region" {
  description = "The AWS region to deploy into"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "The CIDR block for the subnet"
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "availability_zones" {
  description = "The availability zone to deploy into"
  type        = list(string)
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "public_ip" {
  description = "Whether to associate a public IP with the EC2 instance"
  type        = bool
}

variable "eks_cluster_name" {
  type = string
}

variable "eks_node_group_name" {
  type = string
}

variable "eks_node_group_role_name" {
  type = string
}

variable "eks_cluster_role_name" {
  type = string
}

variable "max_size" {
    type = number
}
variable "min_size" {
    type = number
}

variable "desired_size" {
  type = number
}
