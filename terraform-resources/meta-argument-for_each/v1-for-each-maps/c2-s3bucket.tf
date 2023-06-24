# Create S3 bucket per environment for for_each maps
resource "aws_s3_bucket" "mys3bucket" {
  for_each = {
    "dev"  = "my-dapp-bucket-8919819"
    "stag" = "my-sapp-bucket-812891892"
    "qa"   = "my-qapp-bucket-291982981"
    "prod" = "my-papp-bucket-281829198"
  }
  bucket = "${each.key}-${each.value}"
  tags = {
    "Environment" = each.key
  }
}