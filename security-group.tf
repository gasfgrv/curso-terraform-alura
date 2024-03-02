resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cdirs
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "acesso-ssh-2" {
  provider    = aws.us-east-2
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cdirs
  }

  tags = {
    Name = "ssh"
  }
}
