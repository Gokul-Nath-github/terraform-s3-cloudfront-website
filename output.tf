output "s3_endpoint" {
  value = aws_s3_bucket.my-new-bucket.website_endpoint
  description = "this is my bucket endpoint url"
}
output "cdn_url" {
  value = "https://${aws_cloudfront_distribution.new-cdn-s3.domain_name}"
  description = "the cloudfront url"
}