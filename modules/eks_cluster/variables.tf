variable "cluster_name" {}
variable "subnet_ids" {
  type = list(string)
}
variable "cluster_role_arn" {}
variable "depends_on_resources" {
  default = []
}
