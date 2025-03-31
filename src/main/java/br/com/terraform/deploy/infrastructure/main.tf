# Definição do provedor e da região do cluster
provider "aws" {
  region = "us-east-1"
}

# Configuração do grupo de acesso (firewall)
resource "aws_security_group" "securitygroup" {
  name = "securitygroup"
  description = "Permitir acesso HTTP e a Internet"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Configuração da chave SSH
resource "aws_key_pair" "keypair" {
  key_name = "terraform-keypair"
  public_key = file("~/.ssh/id_ed25519.pub")
}

# Configuração da instância EC2 vinculada à VPC
resource "aws_instance" "ec2" {
  ami = "ami-02f624c08a83ca16f"
  instance_type = "t2.nano"
  user_data = file("user_data.sh")
  key_name = aws_key_pair.keypair.key_name
  vpc_security_group_ids = [aws_security_group.securitygroup.id]
}