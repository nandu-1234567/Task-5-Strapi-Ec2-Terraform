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
resource "aws_instance" "my_ec2" {
  ami           = "ami-0c1fe732b5494dc14" # Example AMI ID
  instance_type = "t2.micro"
  key_name = var.key_name

   security_groups = [aws_security_group.strapi_sg.name]
   user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install docker -y
              service docker start
              usermod -a -G docker ec2-user

              docker pull balla1234/strapi-app:latest
              docker run -d -p 80:1337 balla1234/strapi:latest
              EOF
    tags = {
       Name = "Strapi EC2 Instance"
    }
}
resource "aws_security_group" "strapi_sg" {
  name = "strapi_sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

