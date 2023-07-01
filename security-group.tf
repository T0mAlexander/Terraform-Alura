resource "aws_security_group" "ssh-access" {
  name        = "ssh-access"
  description = "Allow SSH traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr-remote-access
  }

  tags = {
    Name = "ssh"
  }
}