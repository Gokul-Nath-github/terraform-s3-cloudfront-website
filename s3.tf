provider "aws" {
  region= var.region
}
resource "aws_s3_bucket" "my-new-bucket" {
  bucket = var.bucket_name
  versioning {
    enabled = true
  }
}
resource "aws_s3_bucket_website_configuration" "my-new-bucket" {
  bucket = aws_s3_bucket.my-new-bucket.id
  index_document {
    suffix = var.main_doc
  }
}
resource "aws_s3_object" "web_obj" {
  bucket = aws_s3_bucket.my-new-bucket.id
  key = var.main_doc
  source = "${path.module}/${var.main_doc}"
  content_type = "text/html"
}
resource "aws_s3_bucket_public_access_block" "access" {
    bucket = aws_s3_bucket.my-new-bucket.id
    ignore_public_acls = false
    block_public_acls = false
    block_public_policy = false
    restrict_public_buckets = false
} 
resource "aws_s3_bucket_policy" "public_policy" {
  bucket = aws_s3_bucket.my-new-bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid = "Public_id_block"
        Effect = "Allow"
        Principal = {
          AWS = aws_cloudfront_origin_access_identity.oai.iam_arn
        }
        Action = "s3:GetObject"
        Resource = "${aws_s3_bucket.my-new-bucket.arn}/*"
      }
    ]
  })
}
