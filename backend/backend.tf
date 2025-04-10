terraform {
  backend "s3" {
    bucket         = var.bucket_name
    key            = var.key
    region         = var.region
    encrypt        = true
    use_lockfile   = true
  }
}


resource "aws_s3_bucket_versioning" "state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name
}
