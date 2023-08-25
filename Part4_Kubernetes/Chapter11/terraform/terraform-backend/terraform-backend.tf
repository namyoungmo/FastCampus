resource "aws_s3_bucket" "test-s3-tf-state" {

  bucket = "momo-project-s3-tf-state"

  tags = {
    "Name" = "momo-project-s3-tf-state"
  }
  
}

resource "aws_dynamodb_table" "test-ddb-lock-table" {

  depends_on   = [aws_s3_bucket.test-s3-tf-state]
  name         = "momo-project-ddb-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    "Name" = "momo-project-ddb-lock-table"
  }

}