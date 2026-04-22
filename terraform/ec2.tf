resource "aws_instance" "app" {
  ami           = "ami-02f663a48a2d2ac41" # Amazon Linux 2023 (Canada)
  instance_type = "t3.micro"

  subnet_id = module.vpc.subnet_id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y python3 git
              EOF

  tags = {
    Name = "terraform-ec2"
  }
}
