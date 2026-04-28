resource "aws_instance" "web_server" {
  ami           = var.ami_id # Amazon Linux (Mumbai)
  instance_type = var.instance_type

  key_name = var.key_name

  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "Hello from Terraform" > /var/www/html/index.html
              EOF

  tags = {
    Name = "web-server"
  }
}
