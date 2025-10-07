provider "aws" {
  region = "us-east-1" # Testing plugin visibility - remove this later
}

resource "aws_security_group" "example" {
  name        = "spacelift-sg"
  description = "Spacelift test SG"
  vpc_id      = "vpc-12345678"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.0.0/16"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Purpose = "updated"
    Env     = "dev"
  }
}
