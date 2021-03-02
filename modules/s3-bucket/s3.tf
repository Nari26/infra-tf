resource "aws_s3_bucket" "sf-datamgmt-metadata-ami-build" {
  bucket = "${var.bucket}"
  acl    = "${var.acl}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}