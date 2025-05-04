resource "aws_cloudfront_distribution" "new-cdn-s3" {
  origin {
    domain_name = aws_s3_bucket.my-new-bucket.bucket_regional_domain_name
    origin_id = "my-S3-static-orgin"
    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.oai.cloudfront_access_identity_path
    }
  }
  enabled = true
  default_root_object = var.main_doc
  default_cache_behavior {
    allowed_methods = ["GET","HEAD"]
    cached_methods = ["GET","HEAD"]
    target_origin_id = "my-S3-static-orgin"
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
    viewer_protocol_policy = "redirect-to-https"
  }
  price_class = var.price_class
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  viewer_certificate {
    cloudfront_default_certificate = true
  }
  depends_on = [ aws_s3_bucket.my-new-bucket ]
  }
  resource "aws_cloudfront_origin_access_identity" "oai" {
    comment = "my new OAI comment"
  }
