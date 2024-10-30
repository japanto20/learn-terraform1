resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = var.component_name
  }

}

resource "aws_route53_record" "record" {
  for_each = var.instances
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "${var.component_name}-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]
}

variable "component_name"  {}