resource "aws_s3_object" "object" {
  bucket = var.bucket_name
  key    = var.file_key
  source = var.file_source

}