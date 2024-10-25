variable "instances" {
  default = [
    "frontend",
    "cart",
    "catalogue",
    "user",
    "shipping",
    "payment",
    "mysql",
    "mongodb",
    "rabbitmq",
    "redis"
  ]
}

resource "aws_instance" "instance" {
  count = length(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0e02eb30681e3cecb"]
  tags = {
    Name = var.instances[count.index]
  }

}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z10277543R9LVZD9JGS0L"
  name    = "${var.instances[count.index]}-dev.antodevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[count.index].private_ip]
}