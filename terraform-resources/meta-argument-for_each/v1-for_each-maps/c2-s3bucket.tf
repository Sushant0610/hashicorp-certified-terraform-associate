# Create S3 Bucket based on environment with for_each meta-argument
resource "aws_s3_bucket" "mys3bucket" {
  for_each = {
    "dev"  = "my-dapp-bucket-1213327"
    "qa"   = "my-qapp-bucket-2131378"
    "stag" = "my-sapp-bucket-12781782"
    "prod" = "my-papp-bucket-128189"
  }
  bucket = "${each.key}-${each.value}"
  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}