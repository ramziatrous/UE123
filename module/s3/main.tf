resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3_name
  force_destroy = true
  tags = {
    Name = var.s3_name
  }
 
}