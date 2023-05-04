# Create 4 IAM Users
resource "aws_iam_user" "myuser" {
  for_each = toset(["TJack", "Tjames", "TMadhu", "TDave"])
  name     = each.key
}