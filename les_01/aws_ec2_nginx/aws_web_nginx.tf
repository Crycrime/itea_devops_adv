provider "aws" {
  region = "eu-west-2" #London
}

resource "aws_instance" "ec2_nginx" {
  ami                    = "ami-0e80a462ede03e653" #Amazon Linux 2 AMI (HVM)
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web_server_sg.id]
  user_data              = file("user_data.sh")

  tags = {
    Name = "Instance with NGINX"
  }
}

resource "aws_eip" "my_static_ip" {
  instance = aws_instance.ec2_nginx.id
}

resource "aws_security_group" "web_server_sg" {
  name        = "web_server_sg"
  description = "sg_web_server"

  ingress {
    description = "web_server_sg"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "web_server_sg"
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

  tags = {
    Name = "web_server_sg"
  }
}
