# ====================
# Variable file 
# ====================
variable "statefile" {
  type    = string
  default = "myterraform-2022-02-06"
}
variable "service_name" {
  type    = string
  default = "harutotanabe"
}
variable "environment" {
  type    = string
  default = "develop"
}
variable "region" {
  type    = string
  default = "ap-northeast-1"
}

# ====================
# Read Env File
# ====================
locals {
  env = yamldecode(file("envs/${terraform.workspace}.yml"))
}
