variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}

variable "internet_gateway_id" {
  description = "The ID of the internet gateway"
  type        = string
}

variable "name" {
  description = "The name of the subnet"
  type        = string
}
