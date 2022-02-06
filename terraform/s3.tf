# ====================
# Create Sample S3
# Enviroment  
# ====================
resource "aws_s3_bucket" "sample-bucket" {
  bucket = "${local.env[0].bucket-name}-${var.region}"
  tags = {
    Name    = "${var.service_name}-${var.region}-${local.env[0].env}"
    Service = var.service_name
    Region  = var.region
    Tag     = local.env[0].tags
  }
}