resource "aws_s3_bucket" "voicebot" {
  bucket = "voicebot-bucket-123456" # must be unique

  tags = {
    Name = "voicebot-bucket"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.voicebot.id

  versioning_configuration {
    status = "Enabled"
  }
}
