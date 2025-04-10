variable "region" {
  default = "eu-west-1"
}

variable "bucket_name" {
  default = "jimmy-terraform-state-demo"
  
}

variable "key" {
    default = "ec2-deployment/terraform.tfstate"
}