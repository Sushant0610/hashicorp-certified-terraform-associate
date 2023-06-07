# Create S3 bucket per environment with for_each and maps
resource "aws_s3_bucket" "mys3bucket" {
  for_each = {
    "dev"  = "my-dapp-bucket"
    "qa"   = "my-qapp-bucket"
    "stag" = "my-sapp-bucket"
    "prod" = "my-papp-bucket"
  }
  bucket = "${each.key}-${each.value}"
  tags = {
    "Environment" = each.key
    bucketname    = "${each.key}-${each.value}"
  }
}