# ====================
# Store state file 
# ====================
terraform {
  backend "s3" {
    bucket  = "myterraform-2022-02-06"
    key     = "terraform/terraform.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}