# Create S3 Buckets with for_each maps
resource "aws_s3_bucket" "mys3bucket" {
  # for_each meta argument
  for_each = {
    "dev"  = "my-dapp-bucket-28189278"
    "stag" = "my-sapp-bucket-28189278"
    "qa"   = "my-qapp-bucket-28189278"
    "prod" = "my-papp-bucket-28189278"
  }
  bucket = "${each.key}-${each.value}"
  tags = {
    "Name" = each.key
  }
}