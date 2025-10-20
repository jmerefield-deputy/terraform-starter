# This resource here is to show you how plan policies work.

resource "random_password" "secret" {
  length  = 16
  special = true
}

resource "aws_s3_bucket" "my_bucket" {
      bucket = "my-unique-terraform-s3-bucket-name-spaccelift"
      acl    = "private"

      tags = {
        Environment = "Dev"
        Project     = "MyApplication"
      }

      versioning {
        enabled = true
      }
}
