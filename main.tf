terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

resource "aws_instance" "dev" {
  count                  = 3
  ami                    = var.amis["us-east-1"]
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraform-aws.key_name
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
  tags = {
    Name = "dev${count.index}"
  }
}

resource "aws_instance" "dev4" {
  ami                    = var.amis["us-east-1"]
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraform-aws.key_name
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
  depends_on             = [aws_s3_bucket.dev4]
  tags = {
    Name = "dev4"
  }
}

resource "aws_instance" "dev5" {
  ami                    = var.amis["us-east-1"]
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraform-aws.key_name
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
  tags = {
    Name = "dev5"
  }
}

resource "aws_instance" "dev6" {
  provider               = aws.us-east-2
  ami                    = var.amis["us-east-2"]
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraform-aws-2.key_name
  vpc_security_group_ids = [aws_security_group.acesso-ssh-2.id]
  depends_on             = [aws_dynamodb_table.tb_homol]
  tags = {
    Name = "dev6"
  }
}
