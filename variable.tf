variable "region" {
  default = "ap-south-1"
  description = "this is the default region fot the resources"
}
variable "bucket_name" {
  default = "gokul-s3-project"
  description = "this is my bucket name"
}
variable "main_doc" {
  default = "main.html"
  description = "this is the mainn file that is holding the web content"
}
variable "price_class" {
  default = "PriceClass_100"
  description = "this is the price class for the Cloudfront distribution"
}