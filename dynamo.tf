resource "aws_dynamodb_table" "tb_homol" {
  provider     = aws.us-east-2
  name         = "gasfgrv-dynamo-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  range_key    = "timestamp"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "timestamp"
    type = "S"
  }
}
