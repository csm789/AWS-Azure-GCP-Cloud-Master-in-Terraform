#Creating S3 bucket - CODE
#Please use below code to create S3 bucket as shown in demo

resource "aws_s3_bucket" "terraform-s3" {
bucket = "terraform-s3-testing"

versioning {
enabled = true
}

lifecycle {
prevent_destroy = true
}

tags {
Name = "S3 Remote store"
}
}
