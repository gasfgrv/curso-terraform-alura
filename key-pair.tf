resource "aws_key_pair" "terraform-aws" {
  key_name   = "terraform-aws"
  public_key = file("terraform-aws.pub")
}

resource "aws_key_pair" "terraform-aws-2" {
  provider   = aws.us-east-2
  key_name   = "terraform-aws"
  public_key = file("terraform-aws.pub")
}
