resource "aws_s3_bucket" "firsts3-bucket" {
  bucket = "mytestbucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "firsts3-bucket" {
  bucket = aws_s3_bucket.firsts3-bucket.id
  acl    = "private"
}


resource "aws_s3_bucket" "s3first" {
  bucket = "${var.b-name}-${var.b-id}-${var.region}-${var.environment}"
}

resource "aws_s3_bucket_acl" "s3first" {
  bucket = aws_s3_bucket.s3first.id
  acl    = "private"
}

