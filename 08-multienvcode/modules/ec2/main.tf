resource "aws_instance" "instance" {
  for_each = var.instances
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = "test-${var.env}"
  }

}

variable "env" {}