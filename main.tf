terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "us-east-1"
  access_key = "SUPRISE"
  secret_key = "SUPRISE"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name      = "iac-erick"

  # user_data = <<-EOF
  # #!/bin/bash
  # cd /home/ubuntu 
  # echo "<h1>Feito com terraform</h1>" > index.html
  # nohup busybox httpd -f -p 8080 &

  # EOF
  tags = {
    Name = "Aws App python"
  }
}
